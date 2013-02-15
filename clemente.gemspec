Gem::Specification.new do |s|
  s.name        = 'clemente'
  s.version     = '0.0.0'

  s.date        = '2013-02-14'
  s.summary     = "Ruby library for accessing published MLB Advanced Media game data."
  s.description = "Ruby library for accessing published MLB Advanced Media game data. Utilizes the nokogiri rubygem for XML document processing."
  s.authors     = ["Richard C. McGuire"]
  s.email       = 'richardcmcguire@gmail.com'
  # s.require_paths = [ "lib" ]
  # s.files       = [
  #   "lib/clemente.rb", 
  #   "lib/clemente/client.rb",
  #   "lib/clemente/mini_scoreboard_client.rb"
  # ]
  s.files = [ 
    "lib/clemente.rb",
    "lib/clemente/client.rb",
  ]
  s.add_runtime_dependency 'nokogiri', '~> 1.5', '>= 1.5.6'
  # s.license     = 'MIT'
  s.homepage    = 'http://rubygems.org/gems/clemente'
end