class CreateSubLocations < ActiveRecord::Migration[4.2]
  def change
    create_table :sub_locations do |t|
      t.string :english_name
      t.string :local_name
      t.string :alternate_name
      t.string :iso

      t.timestamps
    end
  end
end
