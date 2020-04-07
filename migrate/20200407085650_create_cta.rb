class CreateCta < ActiveRecord::Migration[5.2]
  def change
    create_table :comfy_cms_cta do |t|
      t.string :klass
      t.string :title
      t.text :summary
      t.string :url
      t.boolean :updated

      t.timestamps
    end
  end
end
