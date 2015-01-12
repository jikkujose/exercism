require 'minitest/autorun'
require_relative 'prime'
require 'minitest/reporters'
Minitest::Reporters.use! [Minitest::Reporters::DefaultReporter.new({color: true})]

class TestPrimes < Minitest::Test
  def test_first
    assert_equal 2, Prime.nth(1)
  end

  def test_second
    assert_equal 3, Prime.nth(2)
  end

  def test_sixth_prime
    assert_equal 13, Prime.nth(6)
  end

  def test_big_prime
    assert_equal 104_743, Prime.nth(10_001)
  end

  def test_weird_case
    assert_raises ArgumentError do
      Prime.nth(0)
    end
  end

  def test_prime_method
    assert_equal true, Prime.prime?(13)
  end
end