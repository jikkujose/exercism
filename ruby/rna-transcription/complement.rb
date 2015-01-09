class Complement
  MAPPING = { dna: "GCTA", rna: "CGAU" }

  def self.of_dna(strand)
    strand.tr(MAPPING[:dna], MAPPING[:rna])
  end

  def self.of_rna(strand)
    strand.tr(MAPPING[:rna], MAPPING[:dna])
  end
end
