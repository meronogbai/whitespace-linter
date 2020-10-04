require_relative '../lib/formatter'

describe Formatter do
  file_format = Formatter.new('formatter_test')
  describe '#format' do
    it 'formats file' do
      file_format.format
      expect(file_format.format).to eql ["print 'Hello world'\n", "\n", "print 'Good bye'"]
    end
    it "doesn't format unnecessary lines" do
      expect(file_format.format).not_to eql ["print 'Hello world'\n", "\n", "print 'Good bye'", "\n"]
    end
  end
end

