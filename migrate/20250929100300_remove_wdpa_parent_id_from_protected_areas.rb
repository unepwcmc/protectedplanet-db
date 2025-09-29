class RemoveWdpaParentIdFromProtectedAreas < ActiveRecord::Migration[5.2]
  def up
    remove_index :protected_areas, :wdpa_parent_id
    remove_column :protected_areas, :wdpa_parent_id
  end

  def down
    add_column :protected_areas, :wdpa_parent_id, :integer
    add_index :protected_areas, :wdpa_parent_id
  end
end
