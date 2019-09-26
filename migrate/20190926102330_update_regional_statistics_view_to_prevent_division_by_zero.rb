class UpdateRegionalStatisticsViewToPreventDivisionByZero < ActiveRecord::Migration[5.0]
  def up
    execute "DROP VIEW IF EXISTS aichi11_target_dashboard_view"
    execute "DROP VIEW IF EXISTS regional_statistics_view"
    execute "CREATE VIEW regional_statistics_view AS #{view_sql('20190926102330', 'regional_statistics_view')}"
    execute "CREATE VIEW aichi11_target_dashboard_view AS #{view_sql('20190913140447', 'aichi11_target_dashboard_view')}"
  end

  def down
    execute "DROP VIEW IF EXISTS aichi11_target_dashboard_view"
    execute "DROP VIEW IF EXISTS regional_statistics_view"
    execute "CREATE VIEW regional_statistics_view AS #{view_sql('20190916102330', 'regional_statistics_view')}"
    execute "CREATE VIEW aichi11_target_dashboard_view AS #{view_sql('20190913140447', 'aichi11_target_dashboard_view')}"
  end
end
