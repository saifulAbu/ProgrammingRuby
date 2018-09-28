same = "12:15-12:45"
differ = "12:45-13:15"

# match six characters
pat = /(...)\1/ 
p pat =~ 'abcabc'
p pat =~ 'abcaba'

# example: match same hour part
pat = /(\d\d):\d\d-\1:\d\d/

same = "12:15-12:45"
differ = "12:45-13:15"

p pat =~ same # => 0
p pat =~ differ # => nil


# use name back reference
pat = /(?<hour>\d\d):\d\d-\k<hour>:\d\d/

p pat =~ same
p pat =~ differ

# negative backreference number count backward
pat = /(.)(.)\k<-1>\k<-2>/

p pat =~ "abab" # no match
p pat =~ "abba" # match

# named sub-pattern
pat = /(?<color>red|green|blue) \w+ \g<color> \w+/

p pat =~ "red sun blue moon" # match
p pat =~ "red sun white moon" # no-match





