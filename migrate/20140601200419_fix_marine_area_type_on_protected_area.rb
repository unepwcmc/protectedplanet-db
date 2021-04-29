class FixMarineAreaTypeOnProtectedArea < ActiveRecord::Migration[4.2]
  def change
    rename_column :protected_areas, :report_marine_area, :reported_marine_area
  end
end
