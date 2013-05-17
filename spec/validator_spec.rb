require "spec_helper"

describe Yamln8tor::Validator do
  let(:yaml_path) { "one.yml" }
  let(:yaml) { File.load yaml_path }

  it "returns instance of validator" do
    Yamln8tor::Validator.new(yaml).should be_instance_of Yamln8tor::Validator
  end
end
