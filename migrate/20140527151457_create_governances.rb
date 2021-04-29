class CreateGovernances < ActiveRecord::Migration[4.2]
  def change
    create_table :governances do |t|
      t.string :name

      t.timestamps
    end
  end
end
