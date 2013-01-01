# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'doc_tag/version'

Gem::Specification.new do |s|
  s.version = DocTag::Schema::VERSION
  s.date = %q{2012-12-23}
  s.name = %q{doctag_json_schema}
  s.summary = 'DocTag API - JSON Schema'
  s.description = %q{This is the formal description of the docTag document exchange format. With docTag we(see Supporters) aim to simplify the exchange of documents e.g. invoices, between services. Ruby users can use this gem with utility methods to load and test the schema files.}
  s.authors = ['Georg Leciejewski']
  s.email = %q{gl@salesking.eu}
  s.homepage = %q{https://github.com/docTag/doctag_json_schema}
  s.extra_rdoc_files = ['README.md']
  s.executables   = nil
  s.files         = `git ls-files`.split("\n").reject{|i| i[/^docs\//] }
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ['lib']

  #s.add_development_dependency 'json'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'json_schema_tools'
  s.add_development_dependency 'rake', '>= 0.9.2'
end