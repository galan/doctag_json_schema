#encoding: UTF-8
require 'minitest/autorun'
require 'json-schema'
require 'json'

SCHEMAS_PATH = File.join(File.dirname(File.expand_path(__FILE__)) , '/../schema')

describe 'schema' do
  Dir["#{SCHEMAS_PATH}/**/*\.*"].each do |file|
    it "#{File.basename file} contains valid json" do
      begin
        json_str = File.open(file) { |f|  f.read }
        # force_encoding only available in ruby 1.9.2
        obj = JSON.parse( json_str.respond_to?(:force_encoding ) ? json_str.force_encoding('UTF-8') : json_str)['question']
      rescue JSON::ParserError => parser_error
         assertion =  false, parser_error.message
      else
         assertion = true
      end

      assert *assertion
    end
  end
end