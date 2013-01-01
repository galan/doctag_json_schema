require 'spec_helper'

describe DocTag::Schema do

  context 'path' do
    it 'should provide path to schema files' do
      DocTag::Schema.path.should == File.expand_path( File.join('../schema'), File.dirname(__FILE__))
    end
  end

  context 'read schemata' do

    it 'should read all json files' do
      SchemaTools.schema_path = DocTag::Schema.path
      SchemaTools::Reader.read_all
      SchemaTools::Reader.registry.should_not be_empty
    end

  end
end