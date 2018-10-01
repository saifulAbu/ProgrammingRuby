txt = ["Mr Jones and Sally", "Mr Bond and Ms Moneypenny", "Samsoon and Deliah", "Dr Jekyll and himself", "Ms Hinky Smith and Ms Jones"]

re = %r{
	(?:(?<title>Mrs | Mr | Ms | Dr)\s)? (.*?) 
	\s and \s 
	(\g<title>\s)? (.+)
}x

p txt[0] =~ re
p [$1, $2]
p txt[2] =~ re
p [$1, $2]

# matches title and not title case
p re.match(txt[1])
p re.match(txt[2])

# problem is matches where mix of title and non-title exists
p re.match(txt[0])

#using conditional group, rewrite the pattern
re = %r{
	(?:(?<title>Mrs | Mr | Ms | Dr)\s)? (.*?)
	\s and \s
	(?(<title>)\g<title>\s) (.+)
}x

# still does not work, due to backtraking (.*) matches (Mr Jones), (.+) matches (Sally)
p re.match(txt[0])

# don't backtrack if a title is matched
re = %r{
	^(?>
		(?:(?<title> Mrs | Mr | Ms | Dr)\s)? (.*)
		\s and \s
	 )
	 (?(<title>)\g<title>\s) (.+)
}x

#match properly
p "no backtrack"
p re.match(txt[0])
p re.match(txt[1])
