txt = ["red ball and blue bucket", "blue ball and red bucket", "blue ball and blue bucket"]
# (?(group_id) true-pattern | fail-pattern)

# ball needs to be in different colored bucket
re = %r{(?:(red)|blue) ball and (?(1)blue|red) bucket}

p re.match(txt[0])
p re.match(txt[1])
p re.match(txt[2])

#named subroutines
sentence = %r{
	(?<subject>   cat   | dog    | gerbil    ) {0}
	(?<verb>      eats  | drinks | generates ) {0}
	(?<object>    water | bones  | PDFs      ) {0}
	(?<adjective> big   | small  | smelly    ) {0}
	(?<opt_adj>   (\g<adjective>\s)?         ) {0}
	The\s\g<opt_adj>\g<subject>\s\g<verb>\s\g<opt_adj>\g<object>
}x

md = sentence.match("The cat drinks water")
puts "The subject is #{md[:subject]} and the verb is #{md[:verb]}"

md = sentence.match("The big dog eats smelly bones")
puts "The last adjective in the second sentence is #{md[:adjective]}"

sentence =~ "The gerbil generates big PDFs"
puts "And the object in the last sentence is #{$~[:object]}"

# sample comment
