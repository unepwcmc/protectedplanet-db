class FixTerritorialWatersGeometry < ActiveRecord::Migration[4.2]
  def change
     rename_column :countries, :territorial_waters_geom, :ts_geom
  end
end
