class AddReportedAreaToProtectedArea < ActiveRecord::Migration[4.2]
  def change
    add_column :protected_areas, :reported_area, :decimal
  end
end
