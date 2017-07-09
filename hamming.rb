class Hamming
  def self.compute(initial, replica)

    raise ArgumentError if initial.length != replica.length

    hamming_distance = 0
    dna_index = 0

    while dna_index < initial.length
      hamming_distance += 1 if initial[dna_index] != replica[dna_index]
      dna_index += 1
    end
    hamming_distance
  end
end

module BookKeeping
   VERSION = 3
end

#OR

class Hamming
  def self.compute(initial, replica)

    raise ArgumentError if initial.length != replica.length

    hamming_distance = 0
    for nucleotide_index in 0...initial.length
      hamming_distance += 1 if initial[nucleotide_index] != replica[nucleotide_index]
    end

    hamming_distance
  end
end
