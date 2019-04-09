class AddMetadataIdAndUrlToPameEvaluations < ActiveRecord::Migration
  def change
    add_column :pame_evaluations, :metadata_id, :integer, null: false,  default: -1
    add_column :pame_evaluations, :url, :string, null: false,  default: ""
  end
end
