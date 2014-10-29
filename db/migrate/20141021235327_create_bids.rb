class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.string :timestamp
      t.float :bid_amount
      t.float :bid_change
      t.string :bid_fee
      t.string :name
      t.float :price
      t.string :auction_uniq_id
      t.string :item_id
      
      t.timestamps
    end
  end
end
