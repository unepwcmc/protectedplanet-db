class CreateCountriesProtectedAreaParcels < ActiveRecord::Migration[5.2]
  def change
    create_table :countries_protected_area_parcels, :id => false do |t|
      t.references :protected_area_parcel, index: false
      t.references :country, index: false
    end
    add_index :countries_protected_area_parcels, [:protected_area_parcel_id, :country_id],
      name: 'index_countries_pa_parcels'
    add_index :countries_protected_area_parcels, :country_id, 
    name: 'index_countries_pa_parcels_country'
  end
end