class AddPointAndPolyFieldsToCountryStatistic < ActiveRecord::Migration[5.2]
  def change
    add_column :country_statistics, :oecm_polygons, :integer
    add_column :country_statistics, :oecm_points, :integer
    add_column :country_statistics, :protected_area_polygons, :integer
    add_column :country_statistics, :protected_area_points, :integer
  end
end
