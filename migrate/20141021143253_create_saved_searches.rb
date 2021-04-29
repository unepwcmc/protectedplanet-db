class CreateSavedSearches < ActiveRecord::Migration[4.2]
  def change
    create_table :saved_searches do |t|
      t.string :search_term
      t.string :filters
      t.text :results_ids, array: true, default: []
      t.references :project, index: true

      t.timestamps
    end
  end
end
