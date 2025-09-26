class DropSubLocations < ActiveRecord::Migration[5.2]
  def up
    # Drop join tables first (they have foreign key constraints)
    drop_table :protected_areas_sub_locations if table_exists?(:protected_areas_sub_locations)
    drop_table :protected_area_parcels_sub_locations if table_exists?(:protected_area_parcels_sub_locations)

    # Drop the main sub_locations table
    drop_table :sub_locations if table_exists?(:sub_locations)
  end

  def down
    # Recreate sub_locations table
    create_table :sub_locations, id: :serial do |t|
      t.string :english_name
      t.string :local_name
      t.string :iso
      t.datetime :created_at
      t.datetime :updated_at
      t.integer :country_id
    end

    add_index :sub_locations, :country_id

    # Recreate join tables
    create_table :protected_areas_sub_locations, id: false do |t|
      t.integer :protected_area_id
      t.integer :sub_location_id
    end

    add_index :protected_areas_sub_locations, %i[protected_area_id sub_location_id],
    name: 'index_protected_areas_sub_locations_composite'
    add_index :protected_areas_sub_locations, :sub_location_id

    create_table :protected_area_parcels_sub_locations, id: false do |t|
      t.bigint :protected_area_parcel_id
      t.bigint :sub_location_id
    end

    add_index :protected_area_parcels_sub_locations, %i[protected_area_parcel_id sub_location_id],
     name: 'index_pas_sub_locations'
    add_index :protected_area_parcels_sub_locations, :sub_location_id, name: 'index_pas_sub_locations_sub_location'
  end
end
