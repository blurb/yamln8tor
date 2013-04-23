require "thor"
require "psych"

module Yamln8tor
  Cli < Thor
    desc "validate DIRECTORY", "Validate syntax for all YAML files in the given base directory"
    def validate(directory=".")
      errors = []

      puts "Validating YAML files in #{directory}."

      Dir.chdir(directory)
      files = Dir.glob "**/*.yml"
      files.each do |f|
        yaml = File.read f
        begin
          Psych.load(yaml, f)
        rescue Psych::SyntaxError => e
          errors << e
          puts e.message
        end
      end

      puts "Finished validating YAML files. Found #{errors.count} errors."
    end
  end
end
