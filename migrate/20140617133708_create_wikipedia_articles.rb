class CreateWikipediaArticles < ActiveRecord::Migration[4.2]
  def change
    create_table :wikipedia_articles do |t|
      t.text :summary
      t.string :url
      t.string :image_url

      t.timestamps
    end
  end
end
