require_relative '../lib/detector'

describe Detector do
  test_file = Detector.new('detector_test')
  describe '#detect_whitespace' do
    it 'detects trailing whitespace' do
      expect(test_file.detect_whitespace).to eql({ 1 => "print 'Hello world'      \n", 4 => "print 'Good bye'  " })
    end
    it "doesn't detect empty lines" do
      expect(test_file.detect_whitespace).not_to eql({ 3 => "\n", 4 => "\n" })
    end
  end
  describe '#detect_empty' do
    it 'detects extra empty lines' do
      expect(test_file.detect_empty).to eql({ 3 => "\n" })
    end
    it "doesn't detect non empty lines" do
      expect(test_file.detect_empty).not_to eql({ 1 => "print 'Hello world'      \n", 4 => "print 'Good bye'  " })
    end
  end
end
