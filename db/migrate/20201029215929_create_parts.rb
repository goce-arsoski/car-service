class CreateParts < ActiveRecord::Migration[6.0]
  def change
    create_table :parts do |t|
      t.string :part_number
      t.string :part_name
      t.integer :cost
      t.string :part_designation
      t.integer :quantity

      t.timestamps
    end
  end
end
