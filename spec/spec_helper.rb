# encoding: utf-8
$:.unshift(File.dirname(__FILE__))
$:.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'rspec'
require 'json_schema_tools'
require 'doctag_json_schema'

RSpec.configure do |config|
end