class CreateProjects < ActiveRecord::Migration[4.2]
  def change
    create_table :projects do |t|
      t.text :name

      t.timestamps
    end
  end
end
