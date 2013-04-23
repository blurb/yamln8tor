#!/usr/bin/env ruby
require "thor"
require "psych"

class Yamln8tor < Thor
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

Yamln8tor.start