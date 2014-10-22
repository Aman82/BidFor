class Item < ActiveRecord::Base
  has_one :seller
  has_many :bids

end
