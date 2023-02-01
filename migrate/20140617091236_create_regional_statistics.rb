class CreateRegionalStatistics < ActiveRecord::Migration[4.2]
  def change
    create_table :regional_statistics do |t|
      t.integer :region_id
      t.float :area
      t.float :pa_area
      t.float :percentage_cover_pas

      t.timestamps
    end
  end
end
