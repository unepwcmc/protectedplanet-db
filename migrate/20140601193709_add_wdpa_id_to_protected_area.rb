class AddWdpaIdToProtectedArea < ActiveRecord::Migration[4.2]
  def change
    add_column :protected_areas, :wdpa_id, :integer
    add_index :protected_areas, :wdpa_id, unique: true
  end
end
