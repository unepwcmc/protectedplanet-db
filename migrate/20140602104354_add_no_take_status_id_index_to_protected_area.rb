class AddNoTakeStatusIdIndexToProtectedArea < ActiveRecord::Migration[4.2]
  def change
    add_index :protected_areas, :no_take_status_id
  end
end
