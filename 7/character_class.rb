require './show_match.rb'

p show_regexp('Price $12.', /[aeiou]/)
p show_regexp('Price $12.', /[\s]/)
p show_regexp('Price $12.', /[$.]/)

# range
a = 'see [The PickAxe-page 123]'
p show_regexp(a, /[A-F]/)
p show_regexp(a, /[A-Fa-f]/)
p show_regexp(a, /[0-9]/)
p show_regexp(a, /[0-9][0-9]/)

# negate character class
a = 'Price $12.'
p show_regexp(a, /[^A-Z]/)
p show_regexp(a, /[^\w]/)
p show_regexp(a, /[a-z][^a-z]/)

# character class abbreviation
# \d decimal digit
# \D any character except a decimal digit
# \h hexadecimal digit character
# \H any character except hexadecimal character
# \R a generic linebreak sequence. may match the 2 chars \r\n
# \s whitespaces
# \w a word character (programming language identifier) [a-zA-Z0-9_]
# \W any character except a word character
# \X an extended unicode grapheme(2 or more chars combine to form a singual visual character)

# options specifier
# (?d) ruby behavior
# (?a) ASCII behavior
# (?u) Unicode support
puts "Option specifier"
a = 'űber.'
p show_regexp(a, /(?a)\w+/)
p show_regexp(a, /(?d)\w+/)
p show_regexp(a, /(?u)\w+/)

p show_regexp(a, /(?d)\W+/)
p show_regexp(a, /(?u)\W+/)

# POSIX character class
puts "POSIX"
a = 'Price $12.'
p show_regexp(a, /[aeiou]/)
p show_regexp(a, /[[:digit:]]/)
p show_regexp(a, /[[:space:]]/)
p show_regexp(a, /[[:^alpha:]]/)
p show_regexp(a, /[[:punct:]aeiou]/)

# using backslash to match special characters
puts 'escape character'
a = 'see [The PickAxe-page 123]'
p show_regexp(a, /[\]]/)
p show_regexp(a, /[0-9\]]/)
p show_regexp(a, /[\d\-]/)

# intersection using &&
a = 'now is the time'
p a.gsub(/[a-z&&[^aeiou]]/, '*') # remove all the characters that are non-vowel by *

#encoding aware matching
puts "Encoding aware matching"
string = "δy/δx = 2πx"
p show_regexp(string, /\p{Alnum}/)
p show_regexp(string, /\p{Digit}/)
p show_regexp(string, /\p{Space}/)
p show_regexp(string, /\p{Greek}/)
p show_regexp(string, /\p{Graph}/)

# . period to match any character
puts "match period"
a = 'It costs $12.'
p show_regexp(a, /c.s/)
p show_regexp(a, /./)
p show_regexp(a, /\./)


