require 'string_calculator'

RSpec.describe StringCalculator do
  describe ".add" do
    it "Checks for .add method" do
      expect(StringCalculator).to respond_to(:add)
    end

    it "accepts a argument" do
      expect { StringCalculator.add("1,2,3") }.not_to raise_error
    end
  end
end