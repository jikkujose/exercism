class Matrix
  attr_reader :rows, :columns

  def initialize(text)
    @text = text
    parse
  end

  def saddle_points
    @rows.each_with_index.map do |row, row_index|
      column_index = row.index(row.max)
      @columns[column_index].min == row.max ? [row_index, column_index] : nil
    end.compact
  end

  private

  def parse
    parse_rows
    parse_columns
  end

  def parse_columns
    @columns = @rows.first.length.times.map do |index|
      @rows.map { |row| row[index] }
    end
  end

  def parse_rows
    @rows = @text.split("\n").map { |line| line.split.map(&:to_i) }
  end
end
