class AddProtectedAreaParcelsSourcesJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_table :protected_area_parcels_sources, id: false do |t|
      t.references :protected_area_parcel, index: { name: 'idx_pa_parcels_sources_parcel_id' }
      t.references :source, index: { name: 'idx_pa_parcels_sources_source_id' }
    end

    add_index :protected_area_parcels_sources, %i[protected_area_parcel_id source_id],
      name: 'idx_pa_parcels_sources_composite'
  end
end
