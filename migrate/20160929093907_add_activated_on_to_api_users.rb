class AddActivatedOnToApiUsers < ActiveRecord::Migration[4.2]
  def change
    add_column :api_users, :activated_on, :datetime
  end
end
