class AddPercentagePaMarineCoverToCountryStatistic < ActiveRecord::Migration[4.2]
  def change
    add_column :country_statistics, :percentage_pa_marine_cover, :float
  end
end
