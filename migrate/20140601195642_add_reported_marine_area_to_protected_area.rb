class AddReportedMarineAreaToProtectedArea < ActiveRecord::Migration[4.2]
  def change
    add_column :protected_areas, :report_marine_area, :decimal
  end
end
