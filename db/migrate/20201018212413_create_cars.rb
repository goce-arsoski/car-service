class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.brand :string
      t.model :string
      t.year :integer
      t.vin :string
      t.mileage :integer
      t.transmission :string
      t.drive_type :string
      t.color :string

      t.timestamps
    end
  end
end
