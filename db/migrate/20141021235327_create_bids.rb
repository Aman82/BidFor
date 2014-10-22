class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.string :timestamp
      t.float :bid_amount
      t.float :bid_change
      t.string :bid_fee

      t.timestamps
    end
  end
end
