class AddIsBiopamaColumnToCountries < ActiveRecord::Migration
  def change
    add_column :countries, :is_biopama, :boolean, null: false, default: false
  end
end
