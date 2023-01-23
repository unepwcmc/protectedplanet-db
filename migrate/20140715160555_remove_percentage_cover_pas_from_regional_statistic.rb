class RemovePercentageCoverPasFromRegionalStatistic < ActiveRecord::Migration[4.2]
  def change
    remove_column :regional_statistics, :percentage_cover_pas, :string
  end
end
