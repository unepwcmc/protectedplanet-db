class AddManagementAuthorityIdIndexToProtectedArea < ActiveRecord::Migration[4.2]
  def change
    add_index :protected_areas, :management_authority_id
  end
end
