# omg i'm craze
class RunLengthEncoding
  @numerals = %w[0 1 2 3 4 5 6 7 8 9]
  @number = ''
  def self.encode(input, output = '', count = 1)
    input.each_char.with_index do |value, index|
      if input[index] == input[index + 1]
        count += 1
      elsif count > 1
        output << count.to_s + value
        count = 1
      else
        output << value
      end
    end
    output
  end

  def self.decode(input, output = '')
    input.each_char do |value|
      if @numerals.include?(value)
        @number << value
      elsif !@number.empty?
        @number.to_i.times { output << value }
        @number = ''
      else
        output << value
      end
    end
    output
  end
end

module BookKeeping
  VERSION = 3
end
