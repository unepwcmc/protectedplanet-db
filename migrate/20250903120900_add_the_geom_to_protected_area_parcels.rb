class AddTheGeomToProtectedAreaParcels < ActiveRecord::Migration[5.2]
  def change
    add_column :protected_area_parcels, :the_geom, :geometry, null: true
    add_index :protected_area_parcels, :the_geom, using: 'GIST'
    add_column :protected_area_parcels, :the_geom_longitude, :string
    add_column :protected_area_parcels, :the_geom_latitude, :string
  end
end
