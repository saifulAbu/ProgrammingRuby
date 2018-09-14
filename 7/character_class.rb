require './show_match.rb'

p show_regexp('Price $12.', /[aeiou]/)
p show_regexp('Price $12.', /[\s]/)
p show_regexp('Price $12.', /[$.]/)
