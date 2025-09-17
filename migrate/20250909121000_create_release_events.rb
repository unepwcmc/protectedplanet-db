# frozen_string_literal: true

class CreateReleaseEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :release_events do |t|
      t.references :release, null: false, foreign_key: true
      t.string  :phase, null: false
      t.jsonb   :payload_json, default: {}
      t.datetime :at, null: false
    end
    add_index :release_events, :phase
  end
end
