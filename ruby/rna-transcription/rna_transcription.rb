class Assertions
  def self.validate_dna(dna)
    raise ArgumentError unless dna.gsub(/[ATCG]/, '').empty?
  end

  def self.validate_rna(rna)
    raise ArgumentError unless rna.gsub(/[UAGC]/, '').empty?
  end
end

class Complement
  def self.of_dna(dna)
    Assertions::validate_dna(dna)

    dna.tr "ATCG", "UAGC"
  end

  def self.of_rna(rna)
    Assertions::validate_rna(rna)

    rna.tr "CGUA", "GCAT"
  end
end
