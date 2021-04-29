class AddPermissionsToApiUsersTable < ActiveRecord::Migration[4.2]
  def change
    add_column :api_users, :permissions, :json
  end
end
