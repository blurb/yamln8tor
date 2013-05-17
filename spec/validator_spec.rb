require "spec_helper"

describe Yamln8tor::Validator do
  let(:yaml_path) { "spec/correct.yml" }
  let(:yaml) { File.new yaml_path, 'r' }
  subject(:validator) { Yamln8tor::Validator.new(yaml) }

  it "returns instance of validator" do
    validator.should be_instance_of Yamln8tor::Validator
  end

  describe "#errors" do
    subject(:errors) { validator.validate; validator.errors }

    context "for valid file" do
      let(:yaml_path) { "spec/correct.yml" }

      it { should be_empty }
    end

    context "for invalid file" do
      let(:yaml_path) { "spec/malformed.yml"}
      it { should be_all { |err| err.kind_of? Exception } }
    end
  end

  describe "#validate" do
    subject(:validate) { validator.validate }

    context "for valid file" do
      let(:yaml_path) { "spec/correct.yml" }

      it { should be_true }
    end

    context "for invalid file" do
      let(:yaml_path) { "spec/malformed.yml"}

      it { should be_false }
    end
  end
end
