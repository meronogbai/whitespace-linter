#! /usr/bin/env ruby

require_relative '../lib/detector'
require_relative '../lib/format'

# file_lint = Detector.new(ARGV[0])

# extra_whitespace = file_lint.detect_whitespace
# unless extra_whitespace.empty?
#   puts
#   puts '....................................................'
#   puts
#   puts "The following lines have extra trailing whitespace."
#   puts
#   extra_whitespace.each do |num, line|
#     print "#{num} #{line}"
#   end
# end

# extra_empty_lines = file_lint.detect_empty
# unless extra_empty_lines.empty?
#   puts
#   puts '....................................................'
#   puts
#   puts "The following empty lines are duplicate."
#   puts
#   extra_empty_lines.each do |num, line|
#     print "#{num} #{line}"
#   end
# end

file_format = Format.new(ARGV[0])
file_format.format