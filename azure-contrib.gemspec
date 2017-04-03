# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'azure-contrib/version'

Gem::Specification.new do |spec|
  spec.name          = 'azure-contrib'
  spec.version       = Azure::Contrib::VERSION
  spec.authors       = ['David Michael']
  spec.email         = ['david.michael@giantmachines.com']
  spec.summary       = 'Extensions to the Azure Ruby SDK'
  spec.description   = 'Extensions to the Azure Ruby SDK - specifically SAS'
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.5'
  spec.add_development_dependency 'rake'
  spec.add_dependency 'azure'
  spec.add_dependency 'hashie'
  spec.add_dependency 'addressable' # , '<= 2.2.4'
  spec.add_dependency 'celluloid', '~> 0.17.3'
end
