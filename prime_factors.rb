# custom prime factors class
class PrimeFactors
  def self.for(num)
    @output = []
    factors_selector(num)
    @output
  end

  def self.factors_selector(num)
    current_factor = 2
    until num == 1
      if (num % current_factor).zero?
        @output << current_factor
        num /= current_factor
      else
        current_factor = current_factor.succ
      end
    end
  end
end
