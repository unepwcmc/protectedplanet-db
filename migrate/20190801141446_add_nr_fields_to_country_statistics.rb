class AddNrFieldsToCountryStatistics < ActiveRecord::Migration[4.2]
  def change
    add_column :country_statistics, :percentage_nr_land_cover, :float
    add_column :country_statistics, :percentage_nr_marine_cover, :float
    add_column :country_statistics, :nr_version, :integer
    add_column :country_statistics, :nr_report_url, :string
  end
end
