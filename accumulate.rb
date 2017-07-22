# Custom Enumerable
class Array
  def accumulate
    return to_enum(:accumulate) unless block_given?
    each.with_object([]) { |value, output| output << yield(value) }
  end
end

module BookKeeping
  VERSION = 1
end
