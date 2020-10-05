class Formatter
  def initialize(file)
    @file = file
    @temp = []
    temp_file
  end

  def format
    whitespace_remover
    empty_line_remover
    @new_file = File.open(@file, 'w')
    @new_file.write(@temp.join)
    @temp
  end

  private

  def temp_file
    @read_file = File.open(@file, 'r')
    @read_file.each do |line|
      @temp << line
    end
  end

  def whitespace_remover
    @temp.each_with_index do |line, index|
      @temp[index] = if line.end_with?("\n")
                       line.gsub(/\s+\n$/, "\n")
                     else
                       line.gsub(/\s+$/, '')
                     end
    end
  end

  def empty_line_remover
    result = []
    @temp.each_with_index do |line, index|
      result << line unless @temp[index - 1] == "\n" && line == "\n"
    end
    @temp = result
  end
end
