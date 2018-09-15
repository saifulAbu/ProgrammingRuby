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


