class CreateProjectItems < ActiveRecord::Migration[4.2]
  def change
    create_table :project_items do |t|
      t.references :project, index: true
      t.references :item, polymorphic: true

      t.timestamps
    end
  end
end
