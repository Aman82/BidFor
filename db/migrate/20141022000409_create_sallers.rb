class CreateSallers < ActiveRecord::Migration
  def change
    create_table :sallers do |t|
      t.string :items_listed
      t.string :items_active
      t.string :last_activity

      t.timestamps
    end
  end
end
