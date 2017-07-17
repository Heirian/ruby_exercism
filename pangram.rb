# Pangram custom class
class Pangram
  LETTERS_IN_ALPHABET = 26
  def self.pangram?(phrase)
    phrase.downcase.gsub(/[^a-z]/, '').chars.uniq.length == LETTERS_IN_ALPHABET
  end
end

module BookKeeping
  VERSION = 4
end
