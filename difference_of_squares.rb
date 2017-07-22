# Square custom class
class Squares
  def initialize(number)
    @number_list = 0..number
  end

  def square_of_sum
    @number_list.reduce(:+)**2
  end

  def sum_of_squares
    @number_list.map { |num| num**2 }.reduce(:+)
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

module BookKeeping
  VERSION = 4
end
