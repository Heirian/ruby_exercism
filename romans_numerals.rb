# Custom module roman numerals
module RomanNumerals
  TO_ROMANS = {
    1000 => 'M',
    900 => 'CM',
    500 => 'D',
    400 => 'CD',
    100 => 'C',
    90 => 'XC',
    50 => 'L',
    40 => 'XL',
    10 => 'X',
    9 => 'IX',
    5 => 'V',
    4 => 'IV',
    1 => 'I'
  }.freeze

  def to_roman
    translate(self)
  end

  private

  def translate(num)
    TO_ROMANS.each_with_object([]) do |(key, value), rom|
      rom << value * (num / key)
      num %= key
    end.join
  end
end

# Custom roman method to Fixnum
class Fixnum
  include RomanNumerals
end

module BookKeeping
  VERSION = 2
end
