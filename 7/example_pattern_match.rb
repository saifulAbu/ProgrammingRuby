# string match
p /cat/ =~ "dog and cat" #8 
p /cat/ =~ "cat" #0
p /Cat/ =~ "cat" # nil

# string unmatch
p /donkey/ !~ "dog and cat" #true

# changing strings with patterns
str = "dog and cat"
new_str = str.sub(/cat/, "Gerbil")
puts "let go to the #{new_str} for a pint"

# gsub for replacing all
str = "dog and cat"
new_str1 = str.sub(/a/, "*")
new_str2 = str.gsub(/a/, "*")

puts "using sub: #{new_str1}"
puts "using gsub: #{new_str2}"

# modify the original string
str = "now is the time"
str.sub!(/i/, "*")
str.gsub!(/t/, "T")
puts str

# all regular expression are object of Regexp
str = "dog and cat"
pattern = /nd/
pattern =~ str # => 5
str =~ pattern # => 5

/mm|dd/ # => /mm|dd/
Regexp.new("mm/dd") # => /mm|dd/
%r{mm/dd} # => /mm|dd/

# matching against patterns
name = "Fats Waller"
p name =~ /a/ # nil
p name =~ /z/ # 1
p /a/ =~ name # 1
p /a/.match(name) # => #<MatchData "a">
p Regexp.new("all").match(name)

# matched part, pre matching, post matching
$& #matched part
$` #pre match 
$' #post match

