class AddManagementAuthorityIdToProtectedArea < ActiveRecord::Migration[4.2]
  def change
    add_column :protected_areas, :management_authority_id, :integer
  end
end
