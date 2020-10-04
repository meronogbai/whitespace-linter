class Format
  def initialize(file)
    @file = file
    @temp = []
    temp_file
    p @temp
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
      if line.end_with?("\n")
        @temp[index] = line.gsub(/\s+\n$/, "\n")
      else
        @temp[index] = line.gsub(/\s+$/, "")
      end
    end
  end

  def empty_line_remover
    result = []
    @temp.each_with_index do |line, index|
      @result << line unless @temp[index - 1] == "\n" && line == "\n"
    end
    result
  end

  public

  def format
    # @new_file = File.open(@file, 'w')
    whitespace_remover
    p @temp
    # empty_line_remover
    # @new_file.write(@temp.join)
  end
end
