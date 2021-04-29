class RemovesColumnsFromCountriesStatistics < ActiveRecord::Migration[4.2]
  def change
    remove_column :country_statistics, :area
  end
end
