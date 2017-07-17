# to count words
class Phrase
  def initialize(text)
    @words = text.downcase.gsub(/[^a-z0-9']/, ' ').split(' ')
    @frequencies = Hash.new(0)
  end

  def word_count
    @words.each do |index|
      word = index.gsub(/\A'|'\Z/, '')
      @frequencies[word] += 1
    end
    @frequencies
  end
end

module BookKeeping
  VERSION = 1
end
