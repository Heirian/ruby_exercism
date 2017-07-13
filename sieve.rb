class Sieve

  def initialize(number_edge)
    @number_edge = number_edge
  end

  def primes
    distance_list = (2..@number_edge)
    list_of_primes = Array (distance_list)

    distance_list.each do |num|
      for i in 2...num
        if num % i == 0
          list_of_primes.delete(num)
        end
      end
    end

    list_of_primes
  end
end

module BookKeeping
  VERSION = 1
end
