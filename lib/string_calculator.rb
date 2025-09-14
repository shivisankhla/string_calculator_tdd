class StringCalculator
  def self.add(input)
  	check_string(input)
    return 0 if input.empty?
    nums = input.split(/,|\n/).map(&:to_i)
    check_negatives!(nums)
    nums.sum
  end

  def self.check_string(input)
  	raise ArgumentError, "Input must be a string" unless input.is_a?(String)
  end

  def self.check_negatives!(nums)
    negatives = nums.select(&:negative?)
    raise "negative numbers not allowed #{negatives.join(',')}" if negatives.any?
  end
end