class Squares
  def initialize(number)
    @number_list = 0..number
  end

  def square_of_sum
    sum = 0
    for num in @number_list
      sum += num
    end
    sum**2
  end

  def sum_of_squares
    sum_square = 0
    @number_list.each do |x|
      sum_square += x ** 2
    end
    sum_square
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

module BookKeeping
  VERSION = 4
end