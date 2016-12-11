class AddStreetAddressAndCityAndStateToPlace < ActiveRecord::Migration[5.0]
  def change
    add_column :places, :street_address, :string
    add_column :places, :city, :string
    add_column :places, :state, :string
  end
end
