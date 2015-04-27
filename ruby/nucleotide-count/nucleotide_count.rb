module Assertions
  def validate_dna(dna)
    raise ArgumentError unless dna.gsub(/[ATCG]/, '').empty?
  end
end

class Nucleotide
  include Assertions


  def self.from_dna(dna)
    new(dna)
  end

  def initialize(dna)
    validate_dna(dna)
    @strand = dna
  end

  def count(acid)
    @strand.count(acid)
  end

  def histogram
    histogram_base = {
      "A" => 0,
      "T" => 0,
      "C" => 0,
      "G" => 0,
    }

    @strand.chars.each_with_object(histogram_base) do |acid, h|
      h[acid] += 1
    end
  end
end
