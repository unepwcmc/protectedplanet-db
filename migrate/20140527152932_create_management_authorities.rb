class CreateManagementAuthorities < ActiveRecord::Migration[4.2]
  def change
    create_table :management_authorities do |t|
      t.string :name

      t.timestamps
    end
  end
end
