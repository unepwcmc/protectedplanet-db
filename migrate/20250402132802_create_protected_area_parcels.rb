class CreateProtectedAreaParcels < ActiveRecord::Migration[5.2]
  def up
    create_table :protected_area_parcels do |t|
      t.timestamps
      t.integer :wdpa_id
      t.text :wdpa_pid
      t.text :name
      t.text :original_name
      t.boolean :marine
      t.decimal :reported_marine_area
      t.decimal :reported_area
      t.decimal :gis_area
      t.decimal :gis_marine_area
      t.string :green_list_url
      t.string :owner_type
      t.boolean :is_dopa, default: false
      t.integer :governance_id
      t.integer :designation_id
      t.text :management_plan
      t.integer :legal_status_id
      t.integer :iucn_category_id
      t.integer :no_take_status_id
      # as of 04Apr2025 we are not importing geom to parcels table so these are not needed
      # t.string :the_geom_latitude
      # t.string :the_geom_longitude
      t.text :slug
      t.boolean :is_oecm, default: false, null: false
      t.integer :marine_type
      t.string :verif
      t.string :parent_iso3
      t.boolean :has_parcc_info, default: false
      t.string :international_criteria
      t.string :supplementary_info
      t.string :conservation_objectives
      t.datetime :legal_status_updated_at
      t.integer :management_authority_id
      t.boolean :has_irreplaceability_info, default: false
      t.index :slug
      t.index :wdpa_id
      t.index :wdpa_pid
      t.index :governance_id
      t.index :designation_id
      t.index :legal_status_id
      t.index :iucn_category_id
      t.index :no_take_status_id
      t.index :management_authority_id
    end
  end

  def down
    drop_table :protected_area_parcels, if_exists: true
  end
end
