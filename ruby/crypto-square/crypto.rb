class Crypto
  def initialize(text)
    @text = text
  end

  def normalize_plaintext
    @text.gsub(/[^\w]/, '').downcase
  end

  def size
    Math.sqrt(normalize_plaintext.length).ceil
  end

  def plaintext_segments
    normalize_plaintext.chars.each_slice(size).to_a.map { |characters| characters.join }
  end

  def ciphertext

  end
end
