# encoding: utf-8

$: << File.expand_path('../lib', __FILE__)

require 'string_additions/version'

Gem::Specification.new do |s|
  s.name        = 'string_additions'
  s.version     = StringAdditions::VERSION
  s.authors     = ['Shamaoke']
  s.email       = ['shamaoke@hotmail.com']
  s.homepage    = ['https://github.com/Shamaoke/string_additions']
  s.summary     = %{ Extensions for the String class. }
  s.description = %{ A collection of utility methods for the native String class. }

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files features/*.feature spec/string_additions/*_spec.rb`.split("\n")
  s.require_paths = ['lib']

  s.add_development_dependency 'cucumber'
  s.add_development_dependency 'rspec'
end
