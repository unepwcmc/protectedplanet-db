class AddEnabledOnToApiUsers < ActiveRecord::Migration
  def change
    add_column :api_users, :enabled_on, :datetime
  end
end
