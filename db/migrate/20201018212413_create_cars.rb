class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.string :brand
      t.string :model
      t.integer :year
      t.string :vin
      t.integer :mileage
      t.string :transmission
      t.string :drive_type
      t.string :color

      t.timestamps
    end
  end
end
