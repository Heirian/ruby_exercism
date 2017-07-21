# array class custom methods
class Array
  def keep(output = [])
    each do |value|
      output << value if yield(value)
    end
    output
  end

  def discard(output = [])
    each do |value|
      output << value unless yield(value)
    end
    output
  end
end

# array class custom methods
class Array
  def keep
    each_with_object([]) { |value, output| output << value if yield(value) }
  end

  def discard
    each_with_object([]) { |value, output| output << value unless yield(value) }
  end
end
