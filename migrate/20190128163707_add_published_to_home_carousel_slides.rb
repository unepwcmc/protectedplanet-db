class AddPublishedToHomeCarouselSlides < ActiveRecord::Migration[4.2]
  def change
    add_column :home_carousel_slides, :published, :boolean
  end
end
