class AddActivatedOnToApiUsers < ActiveRecord::Migration
  def change
    add_column :api_users, :activated_on, :datetime
  end
end
