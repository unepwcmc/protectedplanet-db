class AddNewStatsToCountryStatisticsTable < ActiveRecord::Migration[4.2]
  def change
    add_column :pame_statistics, :pame_pa_land_area, :float
    add_column :pame_statistics, :pame_percentage_pa_land_cover, :float
    add_column :pame_statistics, :pame_pa_marine_area, :float
    add_column :pame_statistics, :pame_percentage_pa_marine_cover, :float
  end
end
