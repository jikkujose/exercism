class Palindrome
  attr_reader :value, :factors

  def initialize(palindrome, factors)
    @value = palindrome
    @factors = factors.map(&:sort).sort.uniq
  end
end

class Palindromes
  attr_reader :largest, :smallest

  def initialize(min_factor: 1, max_factor: 1)
    @range = min_factor..max_factor
  end

  def generate
    factors = all_possible_factors.select do |left, right|
      palindrome?(left * right)
    end

    pp = factors.group_by { |left, right| left * right }.sort

    @smallest = Palindrome.new(*pp.first)
    @largest = Palindrome.new(*pp.last)
  end

  private

  def all_possible_factors
    @range.to_a.product @range.to_a
  end

  def palindrome?(value)
    value == value.to_s.reverse.to_i
  end
end
