# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#

# Import models
###############
csv_models = [
  Jurisdiction, Governance,
  IucnCategory, Region, Country, SubLocation
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

# Import country statistics and PAME statistics
Stats::CountryStatisticsImporter.import


# Create Call To Actions CMS components
CTAS = {
  api: {
    css_class: 'api',
    title: 'API',
    summary: 'API Summary',
    url: 'https://api.protectedplanet.net',
    updated: false
  },
  live_report: {
    css_class: 'live-report',
    title: 'Live Report',
    summary: 'Live Report Summary',
    url: 'https://livereport.protectedplanet.net',
    updated: false
  }
}.freeze

# Presence of dummy CTAs interferes with WDPA release
unless ENV['no_ctas']
  CTAS.each do |key, hash|
    puts "Creating #{key} CTA..."
    cta = CallToAction.find_by_css_class(hash[:css_class])
    cta || CallToAction.create(hash)
  end
end