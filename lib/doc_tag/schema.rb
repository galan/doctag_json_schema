# encoding: utf-8
module DocTag
  class Schema
    # Get the path to schema files. So it can be used f.ex. with
    # gem json_schema_tools
    def self.path
      File.expand_path( '../../schema', File.dirname(__FILE__))
    end
  end
end