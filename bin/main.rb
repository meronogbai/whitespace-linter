#! /usr/bin/env ruby

require_relative '../lib/detector'
require_relative '../lib/formatter'

file_lint = Detector.new(ARGV[0])

extra_whitespace = file_lint.detect_whitespace
unless extra_whitespace.empty?
  puts
  puts '....................................................'
  puts
  puts 'The following lines have extra trailing whitespace.'
  puts
  extra_whitespace.each do |num, line|
    print "#{num} #{line}"
  end
end

extra_empty_lines = file_lint.detect_empty
unless extra_empty_lines.empty?
  puts
  puts '....................................................'
  puts
  puts 'The following empty lines are duplicate.'
  puts
  extra_empty_lines.each do |num, line|
    print "#{num} #{line}"
  end
end

unless extra_empty_lines.empty? && extra_empty_lines.empty?
  loop do
    puts 'Do you want to autoformat your file? y/n'
    format_prompt = $stdin.gets.chomp.downcase
    if format_prompt == 'y'
      file_format = Formatter.new(ARGV[0])
      file_format.format
      puts 'Thanks for using whitespace linter'
      break
    elsif format_prompt == 'n'
      puts 'Thanks for using whitespace linter'
      break
    else
      puts 'Please input y or n'
    end
  end
end
