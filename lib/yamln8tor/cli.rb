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

      files.each do | file |
        v = Validator.new(file)
        v.validate
        errors += v.errors unless v.errors.empty?
      end

      puts "Finished validating #{files.count} YAML files. Found #{errors.count} errors."

      errors.each do |e|
        puts e.filename + ": " + e.message
      end
    end
  end
end
