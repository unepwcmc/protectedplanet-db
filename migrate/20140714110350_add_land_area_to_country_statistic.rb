class AddLandAreaToCountryStatistic < ActiveRecord::Migration[4.2]
  def change
    add_column :country_statistics, :land_area, :float
  end
end
