class MarkGreenlistSites < ActiveRecord::Migration
  def change
    sites = [
      # Asia Pacific
      "jirisan-national-park",
      "odaesan-national-park",
      "seoraksan-national-park",
      "montague-island-nature-reserve",
      "arakwal-national-park",
      95996,
      "tangjiahe-nature-reserve",
      95573,
      "mount-huangshan-world-heritage-site",
      "wudalianchihuoshan-nature-reserve",
      "changqing-nature-reserve",
      # Europe
      "parco-nazionale-del-gran-paradiso-national-park",
      "donana-natural-park",
      "sierra-nevada-natural-park",
      "iroise-marine-nature-park",
      "pyrenees-national-park-core-area",
      "cerbere-banyuls-national-nature-reserve",
      "marais-d-episy-biotope-protection-order",
      "guadeloupe-national-park-core-area",
      # Africa
      "lewa-wildlife-conservancy-community-conservancy",
      "ol-pejeta-conservancy-private-protected-area",
      # South America
      "galeras-fauna-and-flora-sanctuary",
      "gorgona-natural-national-park",
      "tatama-natural-national-park"
    ]

    sites.each do |site|
      if site.is_a?(String)
        pa = ProtectedArea.find_by_slug(site)
      else
        pa = ProtectedArea.find_by_wdpa_id(site)
      end

      unless pa.blank?
        pa.is_green_list = true
        pa.save
        puts "Marked #{site} as a green list site"
      end
    end
  end
end
