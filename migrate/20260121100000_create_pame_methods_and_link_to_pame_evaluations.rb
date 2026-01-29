class CreatePameMethodsAndLinkToPameEvaluations < ActiveRecord::Migration[5.2]
  def up
    create_table :pame_methods do |t|
      t.string :name, null: false
      t.timestamps
    end

    add_index :pame_methods, :name, unique: true
    add_reference :pame_evaluations, :pame_method, foreign_key: true, index: true

    execute <<~SQL
      INSERT INTO pame_methods (name, created_at, updated_at)
      SELECT DISTINCT "method", NOW(), NOW()
      FROM pame_evaluations
      WHERE "method" IS NOT NULL AND "method" <> ''
    SQL

    execute <<~SQL
      UPDATE pame_evaluations
      SET pame_method_id = pame_methods.id
      FROM pame_methods
      WHERE pame_evaluations."method" = pame_methods.name
    SQL
  end

  def down
    remove_reference :pame_evaluations, :pame_method, foreign_key: true
    drop_table :pame_methods
  end
end
