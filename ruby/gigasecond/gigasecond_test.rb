require 'minitest/autorun'
require 'date'
require 'time'
require 'minitest/reporters'
Minitest::Reporters.use! [Minitest::Reporters::DefaultReporter.new({color: true})]

require_relative 'gigasecond'

class GigasecondTest < Minitest::Test
  def test_1
    gs = Gigasecond.from(Date.new(2011, 4, 25))
    assert_equal Date.new(2043, 1, 1), gs
  end

  def test_2
    gs = Gigasecond.from(Date.new(1977, 6, 13))
    assert_equal Date.new(2009, 2, 19), gs
  end

  def test_3
    gs = Gigasecond.from(Date.new(1959, 7, 19))
    assert_equal Date.new(1991, 3, 27), gs
  end

  def test_time_with_seconds
    gs = Gigasecond.from(Time.new(1959, 7, 19, 23, 59, 59))
    assert_equal Date.new(1991, 3, 28), gs
  end
end
