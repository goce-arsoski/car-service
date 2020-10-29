class AddVendorToParts < ActiveRecord::Migration[6.0]
  def change
    add_reference :parts, :vendor, index: true
  end
end
