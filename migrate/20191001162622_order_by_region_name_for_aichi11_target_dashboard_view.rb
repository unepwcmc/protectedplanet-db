class OrderByRegionNameForAichi11TargetDashboardView < ActiveRecord::Migration[5.0]
  def up
    execute "DROP VIEW IF EXISTS aichi11_target_dashboard_view"
    execute "CREATE VIEW aichi11_target_dashboard_view AS #{view_sql('20191001162622', 'aichi11_target_dashboard_view')}"
  end

  def down
    execute "DROP VIEW IF EXISTS aichi11_target_dashboard_view"
    execute "CREATE VIEW aichi11_target_dashboard_view AS #{view_sql('20190913140447', 'aichi11_target_dashboard_view')}"
  end
end
