require 'bcrypt'
class User < ActiveRecord::Base
  attr_accessor :remember_token, :activation_token, :reset_token
  attr_accessor :email_confirmation     # uses default getter/setter

  has_secure_password

  has_many :cars
  has_many :polls, through: :cars

  has_attached_file :avatar, 
      :styles => { :medium => "300x300>", :thumb => "100x100>" },
      :storage => :s3,
      :bucket  => ENV['MY_BUCKET_NAME'],
      :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  # REGULAR VALIDATOR
  validates_presence_of :first_name, :last_name, :email, :email_confirmation

  # EMAIL VALIDATOR
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }

  # PASSWORD VALIDATORS
  validates_length_of :password, :minimum => 5

  # CONFIRMATION VALIDATORS (e.g. checks if :email and :email_confirmation fields are equal)
  validates_confirmation_of :email

  def authenticate(test_password)
    if test_password && BCrypt::Password.new(self.password_digest) == test_password
      self
    else
      false
    end
  end

  def full_name
    self.first_name + " " + self.last_name
  end

  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

  def User.new_token
    SecureRandom.urlsafe_base64
  end

  # Sets the password reset attributes.
  def create_reset_digest
    self.reset_token = User.new_token
    update_attribute(:reset_digest,  User.digest(reset_token))
    update_attribute(:reset_sent_at, Time.zone.now)
  end

  # Sends password reset email.
  def send_password_reset_email
    UserMailer.password_reset(self).deliver_now
  end
    # Returns true if a password reset has expired.
  def password_reset_expired?
    reset_sent_at < 2.hours.ago
  end
end
