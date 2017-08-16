class MarkCountriesWithTheirOverseasTerritories < ActiveRecord::Migration
  def change
    overseas_territories = {
      "AUS" => ["CCK", "CXR", "NFK", "HMD"],
      "NZL" => ["TKL"],
      "CHN" => ["HKG", "MAC"],
      "GBR" => ["AIA", "BMU", "VGB", "CYM", "IOT", "FLK", "MSR", "SGS", "SHN", "PCN", "TCA", "JEY", "GGY", "GIB", "IMN"],
      "FRA" => ["NCL", "PYF", "WLF", "ATF", "BLM", "GLP", "GUF", "MAF", "MTQ", "MYT", "REU", "SPM"],
      "USA" => ["ASM", "VIR", "GUM", "MNP", "PRI", "UMI"],
      "NOR" => ["SJM", "BVT"],
      "DNK" => ["FRO", "GRL"],
      "FIN" => ["ALA"],
      "NLD" => ["ABW", "BES", "CUW", "SXM"]
    }

    overseas_territories.each do |parent_iso, child_isos|
      parent_country = Country.find_by_iso_3(parent_iso)

      unless parent_country.nil?
        child_isos.each do |child_iso|
          child_country = Country.find_by_iso_3(child_iso)

          unless child_country.nil?
            parent_country.children << child_country
            puts "Added #{child_country.iso_3} to parent #{parent_country.iso_3}"
          end
        end
      end
    end
  end
end
