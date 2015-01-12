class Prime
  @primes = [2]

  def self.nth(number)
    i = @primes.last

    until @primes[number - 1]
      @primes << i if self.prime? i
      i += 1
    end

    @primes.last
  end

  def self.prime?(number)
    if @primes.last < number
      @primes.include? number
    else
      (2..(Math.sqrt(number).round)).any? { |x| number % x == 0 }
    end
  end
end
