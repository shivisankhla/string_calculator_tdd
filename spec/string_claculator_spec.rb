require 'string_calculator'

RSpec.describe StringCalculator do
  describe ".add" do
    it "Checks for .add method" do
      expect(StringCalculator).to respond_to(:add)
    end

    it "accepts a argument" do
      expect { StringCalculator.add("1,2,3") }.not_to raise_error
    end

    it "raises an error if input is not a string" do
      expect { StringCalculator.add(123) }.to raise_error(ArgumentError)
    end

    it "returns 0 for an empty string" do
      expect(StringCalculator.add("")).to eq(0)
    end

    it "returns the number itself for a single number" do
      expect(StringCalculator.add("5")).to eq(5)
    end
  end
end