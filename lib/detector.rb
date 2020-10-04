class Detector
  def initialize(file)
    @file = File.open(file).to_a
  end

  def detect_whitespace
    result = {}
    @file.each_with_index do |line, index|
      result[index + 1] = line if line.end_with?(" \n") || line.end_with?(" ")
    end
    result
  end

  def detect_empty
    result = {}
    @file.each_with_index do |line, index|
      result[index + 1] = line if @file[index] == "\n" && @file[index - 1] == "\n"
    end
    result
  end
end
