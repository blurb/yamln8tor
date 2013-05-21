require "thor"
require "yamln8tor/validator"

module Yamln8tor
  class Cli < Thor
    desc "validate DIRECTORY", "Validate syntax for all YAML files in the given base directory"
    def validate(directory=".")
      errors = []

      puts "Validating YAML files in #{directory}."

      Dir.chdir(directory)
      files = Dir.glob "**/*.yml"

      require 'pry'; binding.pry
      
      files.each do | file |
        v = Validator.new(file)
        v.validate
        errors << validate.errors
      end

      puts "Finished validating YAML files. Found #{errors.count} errors."
    end
  end
end
