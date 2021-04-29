class AddDesignationIdToProtectedArea < ActiveRecord::Migration[4.2]
  def change
    add_column :protected_areas, :designation_id, :integer
  end
end
