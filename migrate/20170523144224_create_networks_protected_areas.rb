class CreateNetworksProtectedAreas < ActiveRecord::Migration[4.2]
  def change
    create_table :networks_protected_areas do |t|
      t.references :network
      t.references :protected_area

      t.timestamps
    end
  end
end
