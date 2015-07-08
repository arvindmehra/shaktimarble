require 'rubygems'
require 'sitemap_generator'

# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "https://shaktimarble.com"

#Dynamic Profile for User
SitemapGenerator::Sitemap.create do
  add '/', :changefreq => 'daily'
  add '/makrana_marbles', :changefreq => 'daily'
  add '/granites', :changefreq => 'daily'
  add '/kishangarh_marbles', :changefreq => 'daily'
  add '/kota_stones', :changefreq => 'daily'
  add '/marble_products', :changefreq => 'weekly'
end

SitemapGenerator::Sitemap.ping_search_engines