# Custom Enumerable
class Array
  def accumulate
    return to_enum(:accumulate) unless block_given?
    output = []
    each do |value|
      output << yield(value)
    end
    output
  end
end

module BookKeeping
  VERSION = 1
end
