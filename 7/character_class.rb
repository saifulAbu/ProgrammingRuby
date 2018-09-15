require './show_match.rb'

p show_regexp('Price $12.', /[aeiou]/)
p show_regexp('Price $12.', /[\s]/)
p show_regexp('Price $12.', /[$.]/)

a = 'see [The PickAxe-page 123]'
p show_regexp(a, /[A-F]/)
p show_regexp(a, /[A-Fa-f]/)
p show_regexp(a, /[0-9]/)
p show_regexp(a, /[0-9][0-9]/)
