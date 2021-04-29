class CreatePameSources < ActiveRecord::Migration[4.2]
  def change
    create_table :pame_sources do |t|
      t.string :data_title
      t.string :resp_party
      t.integer :year
      t.string :language

      t.timestamps
    end
  end
end
