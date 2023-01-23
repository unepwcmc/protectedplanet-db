class AddGovernanceIdToProtectedArea < ActiveRecord::Migration[4.2]
  def change
    add_column :protected_areas, :governance_id, :integer
  end
end
