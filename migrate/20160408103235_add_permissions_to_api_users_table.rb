class AddPermissionsToApiUsersTable < ActiveRecord::Migration
  def change
    add_column :api_users, :permissions, :json
  end
end
