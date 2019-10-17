require_relative './lib/2019-GCPL-CLI-Table/version'

Gem::Specifictation.new do |s|
  s.name = '2019-GCPL-CLI-Table'
  s.version = '1.0.0'
  s.date = '2019-10-15'
  s.summary = 'GCPL Season Table printer'
  s.authors = 'Michael Lynch'
  s.email = 'michael@michaelrlynch.com'
  s.files = ["lib/cli.rb", "lib/team.rb", "lib/scraper.rb"]
  s.executables << '2019-GCPL-CLI-Table'
  s.homepage = 'https://rubygems.org/gems.2019-GCPL-CLI-Table'
  s.license = 'MIT'
 end
  
