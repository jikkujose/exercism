class Matrix
  attr_reader :rows, :columns

  def initialize(text)
    @text = text
    parse
  end

  private

  def parse
    parse_rows
    parse_columns
  end

  def parse_rows
    @rows = @text.split("\n").map do |line|
      line.split.map(&:to_i)
    end
  end

  def parse_columns
    @columns = column_count.times.map do |j|
      @rows.map { |row| row[j] }
    end
  end

  def column_count
    @rows.first.length
  end
end
