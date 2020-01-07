class AddSearchViewIndex < ActiveRecord::Migration[4.2]
  def change
    add_index :tsvector_search_documents, :document, using: :gin
  end
end
