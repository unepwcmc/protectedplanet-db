class ProtectedAreaParcelsSubLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :protected_area_parcels_sub_locations, :id => false do |t|
      t.references :protected_area_parcel, index: false
      t.references :sub_location, index: false
    end

    add_index :protected_area_parcels_sub_locations, [:protected_area_parcel_id, :sub_location_id],
      name: 'index_pas_sub_locations'
    add_index :protected_area_parcels_sub_locations, :sub_location_id, 
    name: 'index_pas_sub_locations_sub_location'
  end
end
 