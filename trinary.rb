# trinary custom class
class Trinary
  def to_decimal
    translation
  end

  private

  def initialize(input)
    @input = input.reverse
    @num_list = %w[0 1 2]
    @base = @num_list.size
  end

  def translation
    @input.chars.each_with_index.with_object([]) do |(value, index), nova|
      return 0 unless @num_list.include?(value)
      nova << value.to_i * (@base**index)
    end.reduce(:+)
  end
end

module BookKeeping
  VERSION = 1
end
