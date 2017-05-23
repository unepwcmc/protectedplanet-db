class CreateNetworks < ActiveRecord::Migration
  def change
    create_table :networks do |t|
      t.text :name
      t.text :description
      t.boolean :designation

      t.timestamps
    end
  end
end
