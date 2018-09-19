# substitution with a pattern + string to substitute with
a = 'quick brown fox'
puts a.sub(/[aeiou]/, '*')
puts a.gsub(/[aeiou]/,'*')
puts a.sub(/\s\S+/, '')
puts a.gsub(/\s\S+/, '')
a = ' quick brown fox'
puts a.gsub(/\s\S+/, '')

# pattern + block
a = "quick brown fox"
puts a.sub(/^./) {|match| match.upcase}
puts a.gsub(/[aeiou]/) {|vowel| vowel.upcase}

# use case on normalizing names
def mixed_case(name)
	name.downcase.gsub(/\b\w/) {|first| first.upcase}
end

puts mixed_case("DAVE THOMAS")
puts mixed_case("dave thomas")
puts mixed_case("dAVE tHoMaS")

# substitution with Symbol.to_proc trick
def mixed_case_2(name)
	name.downcase.gsub(/\b\w/, &:upcase)
end
mixed_case_2('dAvE tHoMaS')

# subs with replacement hash
replacement = {"cat" => "feline", "dog" => "canine"}
replacement.default = "unknown"

puts "cat and dog".gsub(/\w+/, replacement)
