# Raindrops custom class
class Raindrops
  def self.convert(number_drop)
    rain_sound = ''

    rain_sound << 'Pling' if (number_drop % 3).zero?
    rain_sound << 'Plang' if (number_drop % 5).zero?
    rain_sound << 'Plong' if (number_drop % 7).zero?

    return number_drop.to_s if rain_sound.empty?

    rain_sound
  end
end

module BookKeeping
  VERSION = 3
end
