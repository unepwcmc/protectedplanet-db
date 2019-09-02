class AddWellConnectedAndImportanceToCountryStatistic < ActiveRecord::Migration
  def change
    add_column :country_statistics, :percentage_land_well_connected, :float
    add_column :country_statistics, :percentage_marine_well_connected, :float
    add_column :country_statistics, :percentage_land_importance, :float
    add_column :country_statistics, :percentage_marine_importance, :float
  end
end
