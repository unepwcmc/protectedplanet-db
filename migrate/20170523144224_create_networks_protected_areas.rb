class CreateNetworksProtectedAreas < ActiveRecord::Migration
  def change
    create_table :networks_protected_areas do |t|
      t.references :network
      t.references :protected_area

      t.timestamps
    end
  end
end
