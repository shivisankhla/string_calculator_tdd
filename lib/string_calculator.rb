class StringCalculator
  def self.add(input)
    raise ArgumentError, "Input must be a string" unless input.is_a?(String)
  end
end