class SpaceAge
  def initialize(seconds)
    @seconds = seconds
  end

  def seconds
    @seconds
  end

  def on_earth
    (@seconds / (60 * 60 * 24 * 365.25)).round(2)
  end
end
