require 'minitest/autorun'
require_relative 'roman'
require 'minitest/reporters'
Minitest::Reporters.use! [Minitest::Reporters::DefaultReporter.new({color: true})]

class RomanTest < Minitest::Test
  [
    ['I', 1],
    ['II', 2],
    ['III', 3],
    ['IV', 4],
    ['V', 5],
    ['VI', 6],
    ['VII', 7],
    ['IX', 9],
    ['X', 10],
    ['XXVII', 27],
    ['XLVIII', 48],
    ['LIX', 59],
    ['LXIX', 69],
    ['LXXII', 72],
    ['LXXXV', 85],
    ['XCIII', 93],
    ['CXLI', 141],
    ['CLXIII', 163],
    ['CDII', 402],
    ['DLXXV', 575],
    ['DCXXXII', 632],
    ['DCCXIX', 719],
    ['CMXI', 911],
    ['MXXIV', 1024],
    ['MMM', 3000]
  ].each do |roman_number, decimal_number|
    define_method "test_#{decimal_number}" do
      assert_equal roman_number, decimal_number.to_roman
    end
  end
end
