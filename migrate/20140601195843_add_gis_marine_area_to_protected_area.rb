class AddGisMarineAreaToProtectedArea < ActiveRecord::Migration[4.2]
  def change
    add_column :protected_areas, :gis_marine_area, :decimal
  end
end
