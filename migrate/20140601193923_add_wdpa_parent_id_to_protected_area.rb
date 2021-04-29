class AddWdpaParentIdToProtectedArea < ActiveRecord::Migration[4.2]
  def change
    add_column :protected_areas, :wdpa_parent_id, :integer
    add_index :protected_areas, :wdpa_parent_id, unique: true
  end
end
