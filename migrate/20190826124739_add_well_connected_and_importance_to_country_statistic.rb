class AddWellConnectedAndImportanceToCountryStatistic < ActiveRecord::Migration[4.2]
  def change
    add_column :country_statistics, :percentage_well_connected, :float
    add_column :country_statistics, :percentage_importance, :float
  end
end
