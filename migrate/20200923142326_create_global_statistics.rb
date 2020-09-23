class CreateGlobalStatistics < ActiveRecord::Migration[5.2]
  def change
    create_table :global_statistics do |t|
      t.integer :singleton_guard # Used to ensure there will be only one row/record
      t.integer :total_protected_areas
      t.integer :total_terrestrial_protected_areas
      t.integer :total_marine_protected_areas
      t.float   :total_land_pa_coverage_percentage
      t.integer :total_land_area_protected
      t.float   :total_ocean_pa_coverage_percentage
      t.integer :total_ocean_area_protected
      t.float   :national_waters_pa_coverage_percentage
      t.integer :national_waters_pa_coverage_area
      t.float   :high_seas_pa_coverage_percentage
      t.integer :high_seas_pa_coverage_area
      t.float   :national_waters_percentage
      t.float   :global_ocean_percentage
      t.integer :total_oecms
      t.integer :total_terrestrial_oecms
      t.integer :total_marine_oecms
      t.float   :total_land_oecms_coverage_percentage
      t.integer :total_land_area_oecms
      t.float   :total_ocean_oecms_coverage_percentage
      t.integer :total_ocean_area_oecms
      t.float   :national_waters_oecms_coverage_percentage
      t.integer :national_waters_oecms_coverage_area
      t.integer :total_oecms_pas
      t.integer :total_terrestrial_oecms_pas
      t.integer :total_marine_oecms_pas
      t.float   :total_land_oecms_pas_coverage_percentage
      t.integer :total_land_area_oecms_pas
      t.float   :total_ocean_oecms_pas_coverage_percentage
      t.integer :total_ocean_area_oecms_pas
      t.float   :national_waters_oecms_pas_coverage_percentage
      t.integer :national_waters_oecms_pas_coverage_area
      t.float   :global_oecms_pas_coverage_percentage
      t.integer :global_oecms_pas
      t.float   :green_list_perc
      t.integer :green_list_area
      t.integer :green_list_count

      t.timestamps
    end
    add_index(:global_statistics, :singleton_guard, :unique => true)
  end
end
