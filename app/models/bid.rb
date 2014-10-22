class Bid < ActiveRecord::Base

  has_one :item
  has_one :user #user is going to be a bidder here

end
