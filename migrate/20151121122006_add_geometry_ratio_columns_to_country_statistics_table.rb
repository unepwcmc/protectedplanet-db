class AddGeometryRatioColumnsToCountryStatisticsTable < ActiveRecord::Migration[4.2]
  def change
    add_column :country_statistics, :polygons_count, :integer
    add_column :country_statistics, :points_count, :integer
  end
end
