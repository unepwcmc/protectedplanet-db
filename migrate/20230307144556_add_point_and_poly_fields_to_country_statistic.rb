class AddPointAndPolyFieldsToCountryStatistic < ActiveRecord::Migration[5.2]
  def change
    add_column :country_statistics, :oecm_polygon_count, :integer
    add_column :country_statistics, :oecm_point_count, :integer
    add_column :country_statistics, :protected_area_polygon_count, :integer
    add_column :country_statistics, :protected_area_point_count, :integer
  end
end
