class Acronym
  REGEX = /\b(\w)|(?:[a-z])([A-Z])/

  def self.abbreviate(text)
    text.scan(REGEX).map { |match| match.compact.first.capitalize }.join
  end
end
