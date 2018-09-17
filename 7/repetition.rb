require './show_match.rb'

=begin
r* 			zero or more
r+ 			one or more
r? 			zero or one
r{m,n} 	at least m, at most n
r{m,}		at least m
r{,n}		at most n
r{m}		exactly m
=end

# /ab+/ matches one a then one or more b. it is not one or more ab
# greedy match: match as much as you can
# lazy matchZ: match with minimum amount/work

a = "The moon is made of cheese"
p show_regexp(a, /\w+/)
p show_regexp(a, /\s.*\s/)  #greedy
p show_regexp(a, /\s.*?\s/) #lazy
p show_regexp(a, /[aeiou]{2,99}/)
p show_regexp(a, /mo?o/)	#greedy
p show_regexp(a, /mo??o/) #lazy


