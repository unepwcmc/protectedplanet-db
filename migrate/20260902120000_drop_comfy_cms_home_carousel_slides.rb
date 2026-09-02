class DropComfyCmsHomeCarouselSlides < ActiveRecord::Migration[5.2]
  def up
    drop_table :comfy_cms_home_carousel_slides, if_exists: true
  end

  def down
    create_table :comfy_cms_home_carousel_slides, id: :serial do |t|
      t.string :title
      t.text :description
      t.string :url
      t.datetime :created_at
      t.datetime :updated_at
      t.boolean :published
    end
  end
end
