class AddTimestampsToApiUsers < ActiveRecord::Migration
  def change
    add_timestamps :api_users
  end
end
