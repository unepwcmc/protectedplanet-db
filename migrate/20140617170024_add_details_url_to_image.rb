class AddDetailsUrlToImage < ActiveRecord::Migration[4.2]
  def change
    add_column :images, :details_url, :text
  end
end
