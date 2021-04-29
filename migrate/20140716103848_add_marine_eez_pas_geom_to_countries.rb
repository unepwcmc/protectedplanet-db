class AddMarineEezPasGeomToCountries < ActiveRecord::Migration[4.2]
  def change
    add_column :countries, :marine_eez_pas_geom, :geometry
  end
end
