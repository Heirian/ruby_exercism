# custom class sum of
class SumOfMultiples
  def initialize(*divisors)
    @divisors = divisors
  end

  def to(limit)
    sum_of(limit)
  end

  private

  def sum_of(limit)
    @divisors.to_a.each.with_object([]) do |divisor, multiples|
      1.upto(limit - 1) do |number|
        multiples << number if (number % divisor).zero?
      end
    end.uniq.reduce(0, :+)
  end
end

module BookKeeping
  VERSION = 1
end
