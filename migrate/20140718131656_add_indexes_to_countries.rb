class AddIndexesToCountries < ActiveRecord::Migration[4.2]
  def change
    add_index :countries, :land_pas_geom, using: :gist
    add_index :countries, :marine_pas_geom, using: :gist
    add_index :countries, :marine_ts_pas_geom, using: :gist
    add_index :countries, :marine_eez_pas_geom, using: :gist
  end
end
