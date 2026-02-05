class DropNetworksAndNetworksProtectedAreas < ActiveRecord::Migration[4.2]
  def up
    drop_table :networks_protected_areas if table_exists?(:networks_protected_areas)
    drop_table :networks if table_exists?(:networks)
  end

  def down
    create_table :networks do |t|
      t.text :name
      t.text :description
      t.boolean :designation

      t.timestamps
    end

    create_table :networks_protected_areas do |t|
      t.references :network
      t.references :protected_area

      t.timestamps
    end
  end
end

