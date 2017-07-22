# custom Extract-Transform-Load class
class ETL
  def self.transform(old)
    old.each_with_object({}) { |(k, v), h| v.map { |c| h[c.downcase] = k } }
  end
end

module BookKeeping
  VERSION = 1
end
