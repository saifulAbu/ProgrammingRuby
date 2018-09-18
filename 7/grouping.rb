require './show_match.rb'

a = 'red ball blue sky blue sky'
puts "...basic grouping..."
p show_regexp(a, /blue|red/)
p show_regexp(a, /(blue|red) \w+/)
p show_regexp(a, /(red|blue) \w+/)
p show_regexp(a, /redd|blue \w+/)
p show_regexp(a, /red (ball|angry) sky/)
a = 'the red angry sky'
p show_regexp(a, /red (ball|angry) sky/)

# use match method to get the grouped match
puts "...accessing specific group..."
md = /(\d\d):(\d\d)(..)/.match("12:50am")
puts "Hour is #{md[1]}, minute is #{md[2]}"
md = /((\d\d):(\d\d))(..)/.match("12:50am")
puts "Time is #{md[1]}"
puts "Hour is #{md[2]}, minute #{md[3]}"
puts "AM/PM is #{md[4]}"

#match duplicated letter
puts "...match duplicated letters..."
puts show_regexp('He said "Hello"', /(\w)\1/) #\1 represents first matched group
#match duplicated substring
puts show_regexp('Mississippi', /(\w+)\1/)

#naming matched groups
puts "...named matched groups..."
str = 'he said "Hello"'
puts show_regexp(str, /(?<char>\w)\k<char>/)
str = 'Mississippi'
puts show_regexp(str, /(?<seq>\w+)\k<seq>/)

#set group name variables hour and min
/(?<hour>\d\d):(?<min>\d\d)(..)/ =~ "12:50am"
#access matched variables
puts "Hour is #{hour}, minute #{min}"
#you can mix and match grouped variable and $2 matched grouping access
puts "Hour is #{hour}, minute #{$2}"

