class AddArchivedToApiUsers < ActiveRecord::Migration[4.2]
  def change
    add_column :api_users, :archived, :boolean, default: false
  end
end
