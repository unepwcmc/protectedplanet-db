class AddPasGeomToCountries < ActiveRecord::Migration[4.2]
  def change
    add_column :countries, :marine_pas_geom, :geometry
    add_column :countries, :land_pas_geom, :geometry
  end
end
