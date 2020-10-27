class AddUrlToGlStatus < ActiveRecord::Migration[5.2]
  def change
    add_column :green_list_statuses, :url, :string
  end
end
