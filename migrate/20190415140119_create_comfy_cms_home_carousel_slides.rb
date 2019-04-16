class CreateComfyCmsHomeCarouselSlides < ActiveRecord::Migration

  def change
    create_table :comfy_cms_home_carousel_slides do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.string :url, null: false
      t.boolean :published
      t.timestamps
    end

    drop_table :home_carousel_slides do |t|
      t.string :title
      t.text :description
      t.string :url
      t.timestamps
    end
  end

end
