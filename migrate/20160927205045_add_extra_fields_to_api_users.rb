class AddExtraFieldsToApiUsers < ActiveRecord::Migration[4.2]
  def change
    add_column :api_users, :kind, :text
    add_column :api_users, :has_licence, :text
    add_column :api_users, :licence_number, :text
  end
end
