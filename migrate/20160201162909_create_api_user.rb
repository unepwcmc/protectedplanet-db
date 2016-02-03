class CreateApiUser < ActiveRecord::Migration
  def change
    create_table :api_users do |t|
      t.string :token, index: true
      t.string :email
      t.string :full_name
      t.string :company
      t.string :reason

      t.boolean :active, index: true
    end
  end
end
