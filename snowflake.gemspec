Gem::Specification.new do |spec|
  spec.name = 'snowflake'
  spec.version =  '0.0.1'
  spec.authors =  ['Joe Johnston']
  spec.license =  'MIT'
  spec.files =    Dir['lib/**/*.rb', 'res/ascii_title.txt']
  spec.summary =  'A gem for making simple web APIs'

  spec.add_development_dependency 'bundler', '~> 2.2'
  spec.add_development_dependency 'minitest', '~> 5.0'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rubocop'
end
