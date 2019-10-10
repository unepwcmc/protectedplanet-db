class AddMarineCoverAndPamePercentagesToRegionalStatistics < ActiveRecord::Migration[5.0]
  def change
    add_column :regional_statistics, :percentage_pa_marine_cover, :float
    add_column :regional_statistics, :pame_percentage_pa_land_cover, :float
    add_column :regional_statistics, :pame_percentage_pa_marine_cover, :float
  end
end
