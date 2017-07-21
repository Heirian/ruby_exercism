# custom Extract-Transform-Load class
class ETL
  def self.transform(old)
    old.each_with_object({}) do |(key, value), nova|
      value.join.downcase.chars.each { |chr| nova[chr] = key }
    end
  end
end

module BookKeeping
  VERSION = 1
end
