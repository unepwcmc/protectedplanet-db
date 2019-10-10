class AddJrcTerrestrialAreaToCountryStatistics < ActiveRecord::Migration[5.0]
  def change
    add_column :country_statistics, :jrc_terr_area, :float
  end
end
