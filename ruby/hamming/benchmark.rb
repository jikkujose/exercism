require 'benchmark'

require_relative 'hamming'
require_relative 'alt_hamming'

N = 10000000000000000

SAMPLE = [
  ['abc', 'aac'],
  ['abctab', 'abctab'],
  ['poiuy', 'poabd']
] * 100

Benchmark.bm do |b|
  b.report 'Hamming - ori' do
    SAMPLE.each do |strand_1, strand_2|
      Hamming.compute(strand_1, strand_2)
    end
  end

  b.report 'Hamming - alt' do
    SAMPLE.each do |strand_1, strand_2|
      AlternateHamming.compute(strand_1, strand_2)
    end
  end
end
