class AddIsBiopamaColumnToCountries < ActiveRecord::Migration[4.2]
  def change
    add_column :countries, :is_biopama, :boolean, null: false, default: false
  end
end
