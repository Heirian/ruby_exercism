# trinary custom class
class Trinary
  def initialize(input)
    @input = input.reverse
    @trin_num = %w[0 1 2]
    @base = 3
  end

  def to_decimal
    translation.reduce(:+)
  end

  def translation
    @input.chars.each_with_index.with_object([]) do |(value, index), nova|
      return [0] unless @trin_num.include?(value)
      nova << value.to_i * (@base**index)
    end
  end
end

module BookKeeping
  VERSION = 1
end
