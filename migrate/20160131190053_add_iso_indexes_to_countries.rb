class AddIsoIndexesToCountries < ActiveRecord::Migration[4.2]
  def change
    add_index :countries, :iso
    add_index :countries, :iso_3
  end
end
