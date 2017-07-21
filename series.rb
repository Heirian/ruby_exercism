# custom class series
class Series
  def initialize(digits)
    @digits = digits
  end

  def slices(num)
    raise ArgumentError if @digits.size < num
    output = []
    @digits.chars.each_with_index do |_chr, index|
      output << @digits[index...(index + num)] if index + num - 1 < @digits.size
    end
    output
  end
end
