# using matched group to match
puts "fred:smith".sub(/(\w+):(\w+)/, '\2, \1')
puts "nercpyitno".gsub(/(.)(.)/, '\2\1')

# named groups
puts "fred:smith".sub(/(?<first>\w+):(?<last>\w+)/, '\k<last>, \k<first>')
puts "nercpyitno".gsub(/(?<c1>.)(?<c2>.)/, '\k<c2>\k<c1>')

#string subs
puts "does not work for string double evaluation"
str = 'a\b\c'
puts str.gsub(/\\/, '\\\\')

puts "the following works"
str = 'a\b\c'
puts str.gsub(/\\/, '\\\\\\\\')

# \& -> matched string
puts "\& works too"
str = 'a\b\c'
puts str.gsub(/\\/, '\&\&')

# string in a block gets evaluated only once
puts "gsub using block"
str = 'a\b\c'
puts str.gsub(/\\/) { '\\\\' }


