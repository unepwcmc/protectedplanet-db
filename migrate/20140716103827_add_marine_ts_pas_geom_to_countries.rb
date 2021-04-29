class AddMarineTsPasGeomToCountries < ActiveRecord::Migration[4.2]
  def change
    add_column :countries, :marine_ts_pas_geom, :geometry
  end
end
