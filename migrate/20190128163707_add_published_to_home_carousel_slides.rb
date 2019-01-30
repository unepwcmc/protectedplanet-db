class AddPublishedToHomeCarouselSlides < ActiveRecord::Migration
  def change
    add_column :home_carousel_slides, :published, :boolean
  end
end
