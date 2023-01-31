class AddTimestampsToApiUsers < ActiveRecord::Migration[4.2]
  def change
    add_timestamps :api_users
  end
end
