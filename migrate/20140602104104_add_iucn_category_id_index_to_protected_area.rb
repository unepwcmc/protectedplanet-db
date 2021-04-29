class AddIucnCategoryIdIndexToProtectedArea < ActiveRecord::Migration[4.2]
  def change
    add_index :protected_areas, :iucn_category_id
  end
end
