class AddHighSeasOecmsStatsToGlobalStatistics < ActiveRecord::Migration[5.2]
  # The stats server emits these four ABNJ stat types; without columns the portal
  # release importer skips them as unknown. Types follow the existing columns:
  # percentages are floats, areas (km2) are integers.
  def change
    add_column :global_statistics, :high_seas_oecms_coverage_percentage, :float
    add_column :global_statistics, :high_seas_oecms_coverage_area, :integer
    add_column :global_statistics, :high_seas_oecms_pas_coverage_percentage, :float
    add_column :global_statistics, :high_seas_oecms_pas_coverage_area, :integer
  end
end
