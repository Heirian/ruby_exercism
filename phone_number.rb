# phone custom class
class PhoneNumber
  def self.clean(number)
    fil_num = number.gsub(/[^0-9]/, '')
    fil_num[0] = '' if fil_num[0].to_i < 2
    fil_num[3] = '' if fil_num[3].to_i < 2
    fil_num = nil if fil_num[0].to_i < 2 || fil_num.size != 10
    fil_num
  end
end

module BookKeeping
  VERSION = 2
end
