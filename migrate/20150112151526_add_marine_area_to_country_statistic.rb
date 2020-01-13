class AddMarineAreaToCountryStatistic < ActiveRecord::Migration[4.2]
  def change
    add_column :country_statistics, :marine_area, :float
  end
end
