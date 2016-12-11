class AddTypeOfAccessToPlace < ActiveRecord::Migration[5.0]
  def change
    add_column :places, :type_of_access, :string
  end
end
