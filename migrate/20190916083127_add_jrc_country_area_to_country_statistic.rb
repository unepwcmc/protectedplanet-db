class AddJrcCountryAreaToCountryStatistic < ActiveRecord::Migration[5.0]
  def change
    add_column :country_statistics, :jrc_country_area, :float
  end
end
