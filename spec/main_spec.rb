describe Detector do
  let (:file) { Detector.new('test_file') }
  describe '#trailing_whitespace' do
    it 'detects trailing whitespace' do
      expect(:file.trailing_whitespace).to eql [1, 8]
    end
  end
  describe '#extra_empty_lines' do
    it 'detects extra empty lines' do
      expect(:file.extra_empty_lines).to eql [2, 3, 4, 5, 6, 7, 9]
    end
  end
end
