require 'rails_helper'

RSpec.describe Seller, :type => :model do

  
  it "should have items_listed" do
    seller = build(:seller, items_listed = nil)
    expect(seller).to be_invalid
  end  

  it "should have items_active" do
    seller = build(:seller, items_active = nil)
    expect(seller).to be_invalid
  end  

  it "should have last_activity" do
    seller = build(:seller, last_activity = nil)
    expect(seller).to be_invalid
  end


  it "should have items_listed, items_active, or last_activity" do
    seller = Seller.new(items_listed: "bowl")
    expect(seller).to be_invalid
    seller = Seller.new(items_active: "yes")
    expect(seller).to be_invalid
  end

  it "can have items_active" do
    seller = Seller.new(items_active: true)
    expect(seller.items_active?).to be(true)
  end
    it "can have last_activity" do
    seller = Seller.new(last_activity: false)
    expect(seller.last_activity?).to be(false)
  end
end