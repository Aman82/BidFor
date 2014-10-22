class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.string :winning_bid
      t.boolean :seller_approval
      t.boolean :buyer_acceptance
      t.datetime :completion_date

      t.timestamps
    end
  end
end
