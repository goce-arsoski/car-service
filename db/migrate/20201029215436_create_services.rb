class CreateServices < ActiveRecord::Migration[6.0]
  def change
    create_table :services do |t|
      t.string :date
      t.integer :car_kilometers
      t.string :work_description
      t.integer :work_hours

      t.timestamps
    end
  end
end
