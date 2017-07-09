class Raindrops
  def self.convert(number_drop)
    rain_sound = ''

    rain_sound << 'Pling' if number_drop % 3 == 0
    rain_sound << 'Plang' if number_drop % 5 == 0
    rain_sound << 'Plong' if number_drop % 7 == 0

    return number_drop.to_s if rain_sound.empty?

    rain_sound
  end
end

module BookKeeping
  VERSION = 3
end
