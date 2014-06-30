
# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bnews_scraper/version'

Gem::Specification.new do |spec|
  spec.name          = "bnews_scraper"
  spec.version       = BnewsScraper::VERSION
  spec.authors       = ["bshore01"]
  spec.email         = ["benjamin.shore@flatironschool.com"]
  spec.summary       = "scrapes b news kana;l"
  spec.description   = %q{I thought this was optional}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = Dir['{bin/*,lib/**/*}'] +
                        %w(bnews_scraper.gemspec Rakefile README.md) 
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake", "~> 2.2"
  spec.add_development_dependency "nokogiri", "~> 2.2"

end

