require 'optparse'

dictionary = "/usr/share/dict/words"

OptionParser.new do |opts|
	opts.banner = "Usage: anagram [ option ] word ..."


