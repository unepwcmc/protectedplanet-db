class AddVerifierToSources < ActiveRecord::Migration[5.2]
  def change
    add_column :sources, :verifier, :string
  end
end
