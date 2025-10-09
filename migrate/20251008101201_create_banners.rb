class CreateBanners < ActiveRecord::Migration[5.2]
  def change
    create_table :banners do |t|
      t.string :title
      t.text :content, null: false
      t.boolean :is_active, default: true, null: false
      t.timestamps
    end
  end
end
