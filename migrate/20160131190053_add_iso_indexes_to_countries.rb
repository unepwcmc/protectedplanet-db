class AddIsoIndexesToCountries < ActiveRecord::Migration
  def change
    add_index :countries, :iso
    add_index :countries, :iso_3
  end
end
