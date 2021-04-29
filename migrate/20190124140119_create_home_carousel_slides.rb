class CreateHomeCarouselSlides < ActiveRecord::Migration[4.2]

  def change
    create_table :home_carousel_slides do |t|
      t.string :title
      t.text :description
      t.string :url
      t.timestamps
    end
  end

end
