class RemoveWikipediaArticleIdFromProtectedAreas < ActiveRecord::Migration[5.2]
  def change
    remove_column :protected_areas, :wikipedia_article_id, :integer
  end
end
