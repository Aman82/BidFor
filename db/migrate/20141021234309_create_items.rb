class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :item_name
      t.string :item_status
      t.float :asking_price
      t.float :notify_price
      t.datetime :listing_date
      t.datetime :expiration_date
      t.text :description

      t.timestamps
    end
  end
end
