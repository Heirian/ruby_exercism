# Custom roman method to Fixnum
module RomanNumerals
  TO_ROMANS = {
      1000 => "M",
      900 => "CM",
      500 => "D",
      400 => "CD",
      100 => "C",
      90 => "XC",
      50 => "L",
      40 => "XL",
      10 => "X",
      9 => "IX",
      5 => "V",
      4 => "IV",
      1 => "I"
  }

  def to_roman
      translate(self).join
  end

  private
    def translate(num)
      TO_ROMANS.each_with_object([]) do |(key, value), rom |
          rom << value * (num / key)
          num %= key
      end
    end
end

class Fixnum
  include RomanNumerals
end

module BookKeeping
  VERSION = 2
end
