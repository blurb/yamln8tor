module Yamln8tor
  class Validator
    attr_reader :filename, :errors

    def initialize(filename)
      @filename = filename
      @errors = []
    end

    def validate
      YAML.load(filename)
      return true
    rescue Exception => e
      errors << e
      return false
    end
  end
end
