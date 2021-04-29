class AddProtectedAreaIdToImage < ActiveRecord::Migration[4.2]
  def change
    add_column :images, :protected_area_id, :integer
    add_index :images, :protected_area_id
  end
end
