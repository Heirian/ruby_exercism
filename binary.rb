# binary translator to number
class Binary
  class << self
    def to_decimal(input)
      @input = input.reverse.chars
      translation
    end

    private

    NUMLIST = %w[0 1].freeze
    BASE = NUMLIST.size
    def translation
      @input.each_with_index.with_object([]) do |(value, index), arr|
        raise ArgumentError unless NUMLIST.include?(value)
        arr << value.to_i * (BASE**index)
      end.reduce(:+)
    end
  end
end

module BookKeeping
  VERSION = 3
end
