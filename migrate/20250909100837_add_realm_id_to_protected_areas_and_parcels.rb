class AddRealmIdToProtectedAreasAndParcels < ActiveRecord::Migration[5.2]
  def change
    add_column :protected_areas, :realm_id, :integer
    add_column :protected_area_parcels, :realm_id, :integer

    add_index :protected_areas, :realm_id
    add_index :protected_area_parcels, :realm_id
  end
end
