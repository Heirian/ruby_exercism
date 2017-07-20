# binary translator to number
class Binary
  @bin_num = %w[0 1]
  def self.to_decimal(input)
    sum = 0
    input.reverse.each_char.with_index do |value, index|
      raise ArgumentError unless @bin_num.include?(value)
      sum += value.to_i * (2**index)
    end
  end
end

module BookKeeping
  VERSION = 3
end
