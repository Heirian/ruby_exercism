# dna to rna
class Complement
  def self.of_dna(dna)
    converter_keys = { G: 'C', C: 'G', T: 'A', A: 'U' }
    rna = ''
    dna.each_char do |nucleotide|
      return '' unless converter_keys.key?(nucleotide.to_sym)
      rna << converter_keys[nucleotide.to_sym]
    end
    rna
  end
end

module BookKeeping
  VERSION = 4
end
