class StringCalculator
  def self.add(input)
  	raise ArgumentError, "Input must be a string" unless input.is_a?(String)
    return 0 if input.empty?
    nums = input.split(/,|\n/).map(&:to_i)
    nums.sum
  end
end