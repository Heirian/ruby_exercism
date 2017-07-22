# array class custom methods
class Array
  def keep
    each_with_object([]) { |value, output| output << value if yield(value) }
  end

  def discard
    each_with_object([]) { |value, output| output << value unless yield(value) }
  end
end
