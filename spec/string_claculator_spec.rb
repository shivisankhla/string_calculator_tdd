require 'string_calculator'

RSpec.describe StringCalculator do
  describe ".add" do
    it "Checks for .add method" do
      expect(StringCalculator).to respond_to(:add)
    end
  end
end