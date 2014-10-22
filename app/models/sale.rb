class Sale < ActiveRecord::Base

  has_one :item
  has_one :user #user is a buyer here
  
end
