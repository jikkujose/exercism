class Clock
  attr_reader :hours, :minutes

  def self.at(hours, minutes = 0)
    new(hours, minutes)
  end

  def initialize(hours, minutes)
    @hours = hours
    @minutes = minutes
    normalize
  end

  %w[+ -].each do |symbol|
    operator = symbol.to_sym

    define_method operator do |minutes|
      self.class.new(@hours, @minutes.send(operator, minutes)).to_s
    end
  end

  def to_s
    pad(@hours) + ":" + pad(@minutes)
  end

  def ==(clock)
    @hours == clock.hours && @minutes == clock.minutes
  end

  private

  def pad(text)
    text.to_s.rjust(2, '0')
  end

  def normalize
    @hours += @minutes / 60
    @hours %= 24
    @minutes %= 60
  end
end
