class DropWikipediaArticles < ActiveRecord::Migration[5.2]
  def change
    drop_table :wikipedia_articles
  end
end
