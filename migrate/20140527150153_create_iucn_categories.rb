class CreateIucnCategories < ActiveRecord::Migration[4.2]
  def change
    create_table :iucn_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
