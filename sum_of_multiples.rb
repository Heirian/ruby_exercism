# custom class sum of
class SumOfMultiples
  def initialize(*numbers)
    @numbers = Array.new(numbers)
  end

  def to(limit)
    multiples = []
    @numbers.each do |index|
      1.upto(limit - 1) do |value|
        multiples << value if (value % index).zero?
      end
    end
    multiples.uniq.reduce(0, :+)
  end
end

module BookKeeping
  VERSION = 1
end
