require './show_match.rb'

# part of pattern match is not included by (?=reg_ex)
str = "red, white, and blue"
p str.scan(/[a-z]+(?=,)/)

#lookahead with (?<=reg_exp)
p show_regexp("seadog hotdog", /(?<=hot)dog/)

# only pattern after \K is stored as whole matched string
p show_regexp("thx1138", /[a-z]+\K\d+/)
