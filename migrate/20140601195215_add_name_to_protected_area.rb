class AddNameToProtectedArea < ActiveRecord::Migration[4.2]
  def change
    add_column :protected_areas, :name, :text
  end
end
