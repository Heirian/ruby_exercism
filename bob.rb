# Tennager awnser helper
class Bob
  def self.hey(remark)
    words = remark.strip
    return 'Whoa, chill out!' if words.upcase == words && words.match(/[A-Z]/)
    return 'Sure.' if words.chars.last == '?'
    return 'Fine. Be that way!' if words.gsub(/[\s]/, '').empty?
    'Whatever.'
  end
end

module BookKeeping
  VERSION = 1
end
