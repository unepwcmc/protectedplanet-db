class AddOecmStatsToRegionalStatisticsAndTargetDashboardView < ActiveRecord::Migration[5.0]
  def up
    execute "DROP VIEW IF EXISTS aichi11_target_dashboard_view"
    execute "DROP VIEW IF EXISTS regional_statistics_view"
    execute "CREATE VIEW regional_statistics_view AS #{view_sql('20200828165929', 'regional_statistics_view')}"
    execute "CREATE VIEW aichi11_target_dashboard_view AS #{view_sql('20200828170418', 'aichi11_target_dashboard_view')}"
  end

  def down
    execute "DROP VIEW IF EXISTS aichi11_target_dashboard_view"
    execute "DROP VIEW IF EXISTS regional_statistics_view"
    execute "CREATE VIEW regional_statistics_view AS #{view_sql('20191010122036', 'regional_statistics_view')}"
    execute "CREATE VIEW aichi11_target_dashboard_view AS #{view_sql('20191001162622', 'aichi11_target_dashboard_view')}"
  end
end
