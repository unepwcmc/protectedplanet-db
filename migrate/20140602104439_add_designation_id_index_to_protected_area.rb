class AddDesignationIdIndexToProtectedArea < ActiveRecord::Migration[4.2]
  def change
    add_index :protected_areas, :designation_id
  end
end
