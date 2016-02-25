# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#

csv_models = [
  Jurisdiction, Governance,
  IucnCategory, Region, Country, SubLocation,
  LegacyProtectedArea
]

csv_models.each do |model|
  puts "### Importing seeds for #{model}"

  pretty_name = model.to_s.pluralize
  filename    = "#{pretty_name.underscore}.csv"

  source = File.join(Rails.root, 'lib', 'data', 'seeds', filename)

  import_count = 0
  failed_seeds = []

  ActiveRecord::Base.transaction do
    CSV.foreach(source, headers: true) do |row|
      attributes = row.to_hash
      if model == Country
        p attributes["region"]
        attributes["region_id"] = Region.where(name: attributes.delete("region")).select(:id).first.id
      end

      if model == SubLocation
        iso_code = attributes['iso']

        unless iso_code.nil?
          country_iso2 = iso_code.split('-').first
          country_id = Country.where(iso: country_iso2).select(:id).first.id

          unless country_id.nil?
            attributes['country_id'] = country_id
          end
        end
      end

      if model.create(attributes)
        import_count += 1
      else
        failed_seeds << attributes
      end
    end

    puts "### Imported #{import_count} #{pretty_name}"

    if failed_seeds.count > 0
      puts "### The following #{failed_seeds.count} failed to import:"
      puts failed_seeds
    end
  end
end
