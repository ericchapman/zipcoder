# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'zipcoder/version'

Gem::Specification.new do |spec|
  spec.name          = "zipcoder"
  spec.version       = Zipcoder::VERSION
  spec.authors       = ["Eric Chapman"]
  spec.email         = ["chapman@e2tec.com"]

  spec.summary       = %q{Converts zip codes to cities, lat/long, and vice-versa}
  spec.homepage      = 'https://github.com/e2technologies/zipcoder'
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '>= 1.7'
  spec.add_development_dependency 'rake', '>= 10.0'
  spec.add_development_dependency 'rspec', '>= 3.5.0'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'codecov'
  spec.add_development_dependency 'redis', "~> 3.3.5"
  spec.required_ruby_version = '>= 2.0'
end
