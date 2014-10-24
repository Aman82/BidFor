class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :make
      t.string :model
      t.integer :year
      t.string :trim
      t.integer :mileage
      t.string :transmission
      t.string :color
      t.string :title
      t.timestamps
    end
  end
end
