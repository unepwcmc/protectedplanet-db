class AddOlderVersionIdToArticlesTable < ActiveRecord::Migration[4.2]
  def change
    add_column :comfy_cms_pages, :older_version_id, :integer
    add_index :comfy_cms_pages, :older_version_id
  end
end
