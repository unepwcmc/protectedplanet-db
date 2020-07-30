class CreateComfyCmsPageCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :comfy_cms_page_categories do |t|
      t.string :group_name
      t.string :label

      t.timestamps
    end

    create_table :comfy_cms_pages_categories do |t|
      t.references :page, foreign_key: { to_table: :comfy_cms_pages }
      t.references :page_category, foreing_key: { to_table: :comfy_cms_page_categories }

      t.timestamps
    end
  end
end
