class Complement
  def self.of_dna(dna)
    rna = ''
    for nucleotide in 0...dna.length
      case
        when dna[nucleotide] == 'G'
          rna << 'C'
        when dna[nucleotide] == 'C'
          rna << 'G'
        when dna[nucleotide] == 'T'
          rna << 'A'
        when dna[nucleotide] == 'A'
          rna << 'U'
        else
          return ''
      end
    end
    rna
  end
end

module BookKeeping
  VERSION = 4
end
