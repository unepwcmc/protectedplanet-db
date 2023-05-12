class AddGdprFieldsToApiUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :api_users, :gdpr_consent, :boolean, default: false, null: false
    add_column :api_users, :gdpr_check_due, :datetime, default: DateTime.now, null: false
  end
end
