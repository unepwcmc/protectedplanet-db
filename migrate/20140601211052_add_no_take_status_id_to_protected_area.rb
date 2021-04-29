class AddNoTakeStatusIdToProtectedArea < ActiveRecord::Migration[4.2]
  def change
    add_column :protected_areas, :no_take_status_id, :integer
  end
end
