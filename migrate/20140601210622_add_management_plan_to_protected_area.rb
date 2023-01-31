class AddManagementPlanToProtectedArea < ActiveRecord::Migration[4.2]
  def change
    add_column :protected_areas, :management_plan, :text
  end
end
