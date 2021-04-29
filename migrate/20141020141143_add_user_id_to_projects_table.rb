class AddUserIdToProjectsTable < ActiveRecord::Migration[4.2]
  def change
    add_column :projects, :user_id, :integer
    add_index :projects, :user_id
  end
end
