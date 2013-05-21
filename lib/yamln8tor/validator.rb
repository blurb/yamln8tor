require "ya2yaml"
require "ostruct"
$KCODE = "UTF8"

module Yamln8tor
  class Validator
    attr_reader :filename, :errors

    def initialize(filename)
      @filename = filename
      @errors = []
    end

    def validate
      ym = YAML.load read_file
      ym.ya2yaml(:syck_compatible => true)
      return true
    rescue ArgumentError => e
      error = ::OpenStruct.new(:message => e.message, :filename => filename)
      errors << error
      return false
    end

    private

    def read_file
      File.open(filename, "r")
    end
  end
end
