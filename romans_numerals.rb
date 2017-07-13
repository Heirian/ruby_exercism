class Fixnum
  def to_roman
    unit = {
      "0" => "",
      "1" => "I",
      "2" => "II",
      "3" => "III",
      "4" => "IV",
      "5" => "V",
      "6" => "VI",
      "7" => "VII",
      "8" => "VIII",
      "9" => "IX"
    }

    tens = {
      "0" => "",
      "1" => "X",
      "2" => "XX",
      "3" => "XXX",
      "4" => "XL",
      "5" => "L",
      "6" => "LX",
      "7" => "LXX",
      "8" => "LXXX",
      "9" => "XC"
    }

    hundreds = {
      "0" => "",
      "1" => "C",
      "2" => "CC",
      "3" => "CCC",
      "4" => "CD",
      "5" => "D",
      "6" => "DC",
      "7" => "DCC",
      "8" => "DCCC",
      "9" => "CM"
    }

    thousands = {
      "1" => "M",
      "2" => "MM",
      "3" => "MMM",
    }

    roman_number = ""

    number = self.to_s

    if self < 10
      roman_number << unit[number[0]]
    elsif self < 100
      roman_number << tens[number[0]]
      roman_number << unit[number[1]]
    elsif self < 1000
      roman_number << hundreds[number[0]]
      roman_number << tens[number[1]]
      roman_number << unit[number[2]]
    elsif self < 4000
      roman_number << thousands[number[0]]
      roman_number << hundreds[number[1]]
      roman_number << tens[number[2]]
      roman_number << unit[number[3]]
    end


    roman_number
  end
end

module BookKeeping
  VERSION = 2
end
