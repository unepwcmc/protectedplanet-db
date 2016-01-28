class CreatePameStatisticsTable < ActiveRecord::Migration
  def change
    create_table :pame_statistics do |t|
      t.belongs_to :country
      t.integer    :assessments
      t.integer    :assessed_pas
      t.float      :average_score
      t.float      :total_area_assessed
      t.float      :percentage_area_assessed
    end

    add_index :pame_statistics, :country_id, unique: true
  end
end
