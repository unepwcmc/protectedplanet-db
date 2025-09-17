# frozen_string_literal: true

class CreateReleases < ActiveRecord::Migration[5.2]
  def change
    create_table :releases do |t|
      t.string  :label, null: false
      t.string  :state, null: false, default: 'started'
      t.jsonb   :stats_json, default: {}
      t.string  :manifest_url
      t.text    :error_text
      t.timestamps
    end

    add_index :releases, :label, unique: true
  end
end
