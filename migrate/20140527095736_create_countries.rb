class CreateCountries < ActiveRecord::Migration[4.2]
  def change
    create_table :countries do |t|
      t.text :name
      t.string :iso
      t.string :iso_3

      t.timestamps
    end
  end
end
