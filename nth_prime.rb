# Primes custom class
class Prime
  def self.nth(position)
    raise ArgumentError, "'position' must be positive" if position < 1
    number = 2
    @list_of_primes = [2]
    while @list_of_primes.length < position
      @list_of_primes << number if prime? number
      number += 1
    end
    @list_of_primes.last
  end

  def self.prime?(number)
    @list_of_primes.each do |i|
      return false if (number % i).zero?
      true
    end
  end
end

module BookKeeping
  VERSION = 1
end
