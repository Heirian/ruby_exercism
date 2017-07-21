# beer song class
class BeerSong
  def verse(v)
    metre(v)
  end

  def verses(initial, final)
    song(initial, final)
  end

  private

  def metre(v)
      if v > 0
        <<~TEXT
        #{v} bottle#{'s' unless v == 1} of beer on the wall, #{v} bottle#{'s' unless v == 1} of beer.
        Take #{ v == 1 ? 'it' : 'one'} down and pass it around, #{ v == 1 ? 'no more' : v - 1} bottle#{'s' unless v == 2} of beer on the wall.
        TEXT
      elsif v == 0
        <<~TEXT
        No more bottles of beer on the wall, no more bottles of beer.
        Go to the store and buy some more, 99 bottles of beer on the wall.
        TEXT
      end
  end

  def song(i, f)
    (f..i).to_a.reverse.map {|v| metre(v) } * "\n"
  end
end

module BookKeeping
  VERSION = 3
end
