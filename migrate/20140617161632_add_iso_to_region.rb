class AddIsoToRegion < ActiveRecord::Migration[4.2]
  def change
    add_column :regions, :iso, :string
  end
end
