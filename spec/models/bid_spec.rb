require 'rails_helper'

RSpec.describe Bid, :type => :model do

  
  it "should have bid_amount" do
    bid = build(:bid, bid_amount = nil)
    expect(bid).to be_invalid
  end  

  it "should have bid_change" do
    bid = build(:bid, bid_change = nil)
    expect(bid).to be_invalid
  end  

  it "should have bid_fee" do
    bid = build(:bid, bid_fee = nil)
    expect(bid).to be_invalid
  end


  it "should have bid_amount, bid_change, or bid_fee" do
    bid = Bid.new(bid_amount: "15.00")
    expect(bid).to be_invalid
    bid = Bid.new(bid_change: "05.00")
    expect(bid).to be_invalid
  end

  it "can have bid_change" do
    bid = Bid.new(bid_change: true)
    expect(bid.bid_change?).to be(true)
  end
    it "can have bid_fee" do
    bid = Bid.new(bid_fee: false)
    expect(bid.bid_fee?).to be(false)
  end
end