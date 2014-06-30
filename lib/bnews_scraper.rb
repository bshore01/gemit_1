
require "open-uri"
require "nokogiri"
Dir[File.dirname(__FILE__) + '/bnews_scraper/*.rb'].each do |file|
  require file
end

