class CreateCta < ActiveRecord::Migration[5.2]
  def change
    create_table :comfy_cms_call_to_actions do |t|
      t.string :css_class
      t.string :title
      t.text :summary
      t.string :url
      t.boolean :updated

      t.timestamps
    end
  end
end
