# grains in a chess board
class Grains
  CHESSTOTALSQUARE = 64

  def self.square(position)
    if (position < 1) || (position > CHESSTOTALSQUARE)
      raise ArgumentError, 'The position must be positive and less than 65'
    end
    2**(position - 1)
  end

  def self.total
    grains_total = 0
    (1..CHESSTOTALSQUARE).each do |position|
      grains_total += 2**(position - 1)
    end
    grains_total
  end
end

module BookKeeping
  VERSION = 1
end
