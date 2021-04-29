class AddGovernanceIdIndexToProtectedArea < ActiveRecord::Migration[4.2]
  def change
    add_index :protected_areas, :governance_id
  end
end
