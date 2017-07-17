# the distance of a DNA to your replica
class Hamming
  def self.compute(original, mutation)
    warning = 'The strands must have the same length'
    raise ArgumentError, warning if original.length != mutation.length
    hamming_distance = 0
    paired_strands = original.chars.zip(mutation.chars)
    paired_strands.count do |(initial, replica)|
      hamming_distance += 1 unless initial == replica
    end
    hamming_distance
  end
end

module BookKeeping
  VERSION = 3
end
