class Item < ActiveRecord::Base
  has_one :seller
  has_many :bids

 
  has_attached_file :avatar, 
      :styles => { :medium => "300x300>", :thumb => "100x100>" },
      :storage => :s3,
      :bucket  => ENV['S3_BUCKET_NAME'],
      :default_url => "/images/:style/missing.png"
    
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/


end
