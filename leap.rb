# Year class with leap year method
class Year
  def self.leap?(year)
    ((year % 4).zero? && (year % 100).nonzero?) || (year % 400).zero?
  end
end

module BookKeeping
  VERSION = 3
end
