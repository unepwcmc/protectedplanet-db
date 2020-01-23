class AddNotNullConstraintToDateNotNullAndTextNotNullFragments < ActiveRecord::Migration[5.2]
  def up
    ActiveRecord::Base.connection.execute(
      <<-SQL
        -- Make sure existing date_not_null fragments all have a not NULL datetime
        UPDATE comfy_cms_fragments
        SET datetime = CURRENT_TIMESTAMP
        WHERE tag = 'date_not_null' AND datetime IS NULL;

        -- Make sure there are no date_not_null fragments with NULL datetime
        ALTER TABLE comfy_cms_fragments
        ADD CONSTRAINT date_not_null CHECK (
          NOT ( tag = 'date_not_null' AND datetime IS NULL )
        );

        -- Make sure there are no text_not_null fragments with empty content.
        -- Also manage strange case where the string representation is messed up
        ALTER TABLE comfy_cms_fragments
        ADD CONSTRAINT text_not_null CHECK (
          NOT ( tag = 'text_not_null' AND ( COALESCE(TRIM(content), '') = '' OR TRIM(content) LIKE '%--- ''%' ) )
        );
      SQL
    )
  end

  def down
    ActiveRecord::Base.connection.execute(
      <<-SQL
        ALTER TABLE comfy_cms_fragments
        DROP CONSTRAINT date_not_null,
        DROP CONSTRAINT text_not_null
      SQL
    )
  end
end
