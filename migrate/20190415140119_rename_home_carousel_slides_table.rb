class RenameHomeCarouselSlidesTable < ActiveRecord::Migration

  def change
    rename_table :home_carousel_slides, :comfy_cms_home_carousel_slides
  end

end
