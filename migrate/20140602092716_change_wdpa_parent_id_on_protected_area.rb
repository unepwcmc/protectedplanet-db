class ChangeWdpaParentIdOnProtectedArea < ActiveRecord::Migration[4.2]
  def change
    remove_index :protected_areas, :wdpa_parent_id
    add_index :protected_areas, :wdpa_parent_id, unique: false
  end
end
