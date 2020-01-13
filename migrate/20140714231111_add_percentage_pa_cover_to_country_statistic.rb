class AddPercentagePaCoverToCountryStatistic < ActiveRecord::Migration[4.2]
  def change
    add_column :country_statistics, :percentage_pa_cover, :float
  end
end
