class AddColumnsToCountry < ActiveRecord::Migration[4.2]
  def change
    add_column :countries, :land_geom, :geometry
    add_column :countries, :eez_geom, :geometry
    add_column :countries, :territorial_waters_geom, :geometry
  end
end
