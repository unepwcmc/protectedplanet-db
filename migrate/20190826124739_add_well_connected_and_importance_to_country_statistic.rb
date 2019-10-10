class AddWellConnectedAndImportanceToCountryStatistic < ActiveRecord::Migration
  def change
    add_column :country_statistics, :percentage_well_connected, :float
    add_column :country_statistics, :percentage_importance, :float
  end
end
