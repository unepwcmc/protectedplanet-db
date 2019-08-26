class AddWellConnectedAndImportanceToCountryStatistic < ActiveRecord::Migration
  def change
    add_column :country_statistics, :well_connected, :float
    add_column :country_statistics, :importance, :float
  end
end
