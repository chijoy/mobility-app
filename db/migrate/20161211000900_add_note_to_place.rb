class AddNoteToPlace < ActiveRecord::Migration[5.0]
  def change
    add_column :places, :note, :string
  end
end
