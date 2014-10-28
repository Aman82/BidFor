require 'rails_helper'

RSpec.describe Item, :type => :model do

  
  it "should have item_name" do
    item = build(:item, item_name = nil)
    expect(item).to be_invalid
  end  

  it "should have item_status" do
    item = build(:item, item_status = nil)
    expect(item).to be_invalid
  end  

  it "should have description" do
    item = build(:item, description = nil)
    expect(item).to be_invalid
  end


  it "should have itemname, item_status, or description" do
    item = Item.new(itemname: "bowl")
    expect(item).to be_invalid
    item = Item.new(item_status: "new")
    expect(item).to be_invalid
  end

  it "can have description" do
    item = Item.new(description: true)
    expect(item.description?).to be(true)
  end
    it "can have asking_price" do
    item = Item.new(asking_price: false)
    expect(item.asking_price?).to be(false)
  end
end