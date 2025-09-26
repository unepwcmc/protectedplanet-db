class DropLegacySearchSystem < ActiveRecord::Migration[5.2]
  def up
    # Drop the search_lexemes table first (it depends on the materialized view)
    drop_table :search_lexemes if table_exists?(:search_lexemes)

    # Drop the materialized view
    execute 'DROP MATERIALIZED VIEW IF EXISTS tsvector_search_documents'

    # Drop the custom aggregate function if it exists
    execute 'DROP AGGREGATE IF EXISTS public.first(anyelement)'
    execute 'DROP FUNCTION IF EXISTS public.first_agg(anyelement, anyelement)'
  end

  def down
    # Recreate the custom aggregate function
    execute <<-SQL
      CREATE OR REPLACE FUNCTION public.first_agg ( anyelement, anyelement )
      RETURNS anyelement LANGUAGE sql IMMUTABLE STRICT AS $$
        SELECT $1;
      $$;

      CREATE AGGREGATE public.first (
        sfunc    = public.first_agg,
        basetype = anyelement,
        stype    = anyelement
      );
    SQL

    # Recreate the materialized view (without sub_locations)
    execute <<-SQL
      CREATE MATERIALIZED VIEW tsvector_search_documents AS
        SELECT pa.wdpa_id,
          setweight(to_tsvector('english'::regconfig, coalesce (public.first(pa.name), '')), 'A') ||
          setweight(to_tsvector(coalesce(public.first(c.language)::regconfig, 'simple'::regconfig), coalesce (unaccent(public.first(pa.original_name)), '')), 'B') ||
          setweight(to_tsvector('english'::regconfig, coalesce (string_agg(c.name, ' '), '')), 'C')
        AS document
        FROM protected_areas pa
        LEFT JOIN countries_protected_areas cpa ON cpa.protected_area_id = pa.id
        LEFT JOIN countries c ON cpa.country_id = c.id
        GROUP BY pa.wdpa_id;
    SQL

    # Add index to the materialized view
    add_index :tsvector_search_documents, :document, using: :gin

    # Recreate the search_lexemes table
    create_table :search_lexemes, id: false do |t|
      t.text :word
    end

    add_index :search_lexemes, :word, using: :gin, opclass: :gin_trgm_ops

    # Populate search_lexemes from the materialized view
    execute <<-SQL
      INSERT INTO search_lexemes (word)
      SELECT word FROM ts_stat('SELECT document FROM tsvector_search_documents');
    SQL
  end
end
