class AddBidIdToItemColumn < ActiveRecord::Migration
  def change
    add_column :items, :bid_id, :integer
  end
end
