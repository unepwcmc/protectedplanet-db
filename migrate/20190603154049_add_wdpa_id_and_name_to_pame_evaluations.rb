class AddWdpaIdAndNameToPameEvaluations < ActiveRecord::Migration[5.0]
  def change
    add_column :pame_evaluations, :wdpa_id, :integer, default: 0, null: false
    add_column :pame_evaluations, :name, :string, default: "", null: false
    add_index :pame_evaluations, :wdpa_id
    add_index :pame_evaluations, :name
  end
end
