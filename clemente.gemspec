Gem::Specification.new do |s|

  s.name        = 'clemente'
  s.summary     = "Ruby library for accessing published MLBAM game data."
  s.description = "Ruby library for accessing published MLBAM game data. Utilizes the nokogiri rubygem for XML document processing."

  s.version     = '0.0.1'

  s.date        = Date.today.to_s
  s.authors     = ["Richard C. McGuire"]
  s.email       = 'richardcmcguire@gmail.com'
  s.license     = 'MIT'
  s.homepage    = 'http://rubygems.org/gems/clemente'

  s.files       = [ 'Rakefile' ]
  s.files       << "#{s.name}.gemspec"
  s.files       += Dir.glob("lib/**/*.rb")

  s.add_runtime_dependency 'nokogiri', '~> 1.5', '>= 1.5.6'
  s.add_runtime_dependency 'faraday', '~> 0.9', '>= 0.9.0'

end
