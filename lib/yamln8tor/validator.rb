module Yamln8tor
  class Validator
    attr_reader :filename, :errors

    def initialize(filename)
      @filename = filename
      @errors = []
    end

    def validate
      YAML.load(f)
    rescue YAML::Exception => e
      errors << e
    end
  end
end
