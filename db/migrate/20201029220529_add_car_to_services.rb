class AddCarToServices < ActiveRecord::Migration[6.0]
  def change
    add_reference :services, :car, index: true
  end
end
