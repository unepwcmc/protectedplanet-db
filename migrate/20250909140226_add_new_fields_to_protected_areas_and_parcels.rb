class AddNewFieldsToProtectedAreasAndParcels < ActiveRecord::Migration[5.2]
  def change
    # Add new fields to protected_areas table
    add_column :protected_areas, :governance_subtype, :string
    add_column :protected_areas, :inland_waters, :string
    add_column :protected_areas, :ownership_subtype, :string
    add_column :protected_areas, :oecm_assessment, :string
    add_column :protected_areas, :site_type, :string

    # Add new fields to protected_area_parcels table
    add_column :protected_area_parcels, :governance_subtype, :string
    add_column :protected_area_parcels, :inland_waters, :string
    add_column :protected_area_parcels, :ownership_subtype, :string
    add_column :protected_area_parcels, :oecm_assessment, :string
    add_column :protected_area_parcels, :site_type, :string

    # Add indexes for frequently queried fields
    add_index :protected_areas, :site_type
    add_index :protected_areas, :governance_subtype
    add_index :protected_areas, :oecm_assessment

    add_index :protected_area_parcels, :site_type
    add_index :protected_area_parcels, :governance_subtype
    add_index :protected_area_parcels, :oecm_assessment
  end
end
