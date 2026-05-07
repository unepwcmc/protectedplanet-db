class DropSavedSearches < ActiveRecord::Migration[5.2]
  def up
    drop_table :saved_searches if table_exists?(:saved_searches)
  end

  def down
    create_table :saved_searches do |t|
      t.string :search_term
      t.string :filters
      t.text :results_ids, array: true, default: []
      t.references :project, index: true

      t.timestamps
    end
  end
end
