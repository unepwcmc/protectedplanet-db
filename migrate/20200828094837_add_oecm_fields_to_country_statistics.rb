class AddOecmFieldsToCountryStatistics < ActiveRecord::Migration[5.0]
  def change
    add_column :country_statistics, :oecms_pa_marine_area, :float
    add_column :country_statistics, :oecms_pa_land_area, :float
    add_column :country_statistics, :percentage_oecms_pa_land_cover, :float
    add_column :country_statistics, :percentage_oecms_pa_marine_cover, :float
  end
end
