# escape in case of single quote
puts 'escape using "\\"' 
puts 'that\'s right'

# interpolation for expression
puts "Seconds/day: #{24*60*60}"
puts "#{'Ho! ' * 3}Merry Christmas!"
puts "Safe level is #$SAFE"

# interpolated code can be a statement, not just an expression
puts "now is #{ def the(a)
									'the ' + a
								end
								the('time')
				} for all bad coders..."

# ways to construct string literals
puts %q/generat single quoted string/
puts %Q!general double quoed string!
puts %Q{Seconds/day: #{24*60*60}}

#Q is optional
puts %!general double-quoted string!
puts %{Seconds/day: #{24*60*60}}

# using here document
string = <<END_OF_STRING
	The body of the string is the input lines up to
	one of the starting with the same text that followed the '<<'
	the text must start at the column 1
END_OF_STRING
puts string
puts ""
# indent the string-end marker string
string = <<-END_OF_STRING
	The body of the string is the input lines up to
	one starting with the same text that fllowed the '<<-'
	because of the '-', the end string markers text can be indented
	END_OF_STRING
puts string
# multiple here document
print <<-STRING1, <<-STRING2
concat
STRING1
	enate
	STRING2
