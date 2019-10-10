class AddRegionalStatisticsView < ActiveRecord::Migration[5.0]
  def up
    execute "DROP VIEW IF EXISTS regional_statistics_view"
    execute "CREATE VIEW regional_statistics_view AS #{view_sql('20190913123830', 'regional_statistics_view')}"
  end

  def down
    execute "DROP VIEW IF EXISTS regional_statistics_view"
  end
end
