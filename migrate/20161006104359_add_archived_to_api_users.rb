class AddArchivedToApiUsers < ActiveRecord::Migration
  def change
    add_column :api_users, :archived, :boolean, default: false
  end
end
