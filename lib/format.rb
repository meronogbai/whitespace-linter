class Format
  def initialize(file)
    @file = File.open(file)
    @temp = []
    temp_file
  end
  private
  def temp_file
    @file.each do |line|
      @temp << line
    end
  end
  def whitespace_remover
    @temp.each do |line|
      line.gsub(/\s+\n/, "\n")
    end
  end
  def empty_line_remover
    result = []
    @temp.each_with_index do |line, index|
      @result << line unless @temp[index-1] == "\n" && line == "\n"
    end
    result
  end
  public
  def format

end
        