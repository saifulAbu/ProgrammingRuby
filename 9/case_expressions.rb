# case basic
case 
when song.name = "misty"
	puts "not again"
when song.duration > 120
	puts "too long"
when Time.now.howr > 21
	puts "it's too late"
else 
	song.play
end

# case 
case command
when "debug"
	dump_debug_info
	dump_symbols
when /p|s+(\w+)/
	dump_variable($1)
when "quit", "exit"
	exit
else 
	print "illegal command: #{commmand}"
end

# compact
kind = 	case year
				when 1850..1889 then "Blues"
				when 1890..1909 then "Ragtime"
				when 1910..1929 then "New Orleans Jazz"
				when 1930..1939 then "Swing"
				else 								 "jazz"
				end

# in case expressions var === val is applied
case line
when /title=(.*)/
	puts "title is #$1"
when /track=(.*)/
	puts "Track is #$1"
end

# 
case shape
when Square, Rectangle
	# ...
when Circle
	# ...
when Trianble
	# ...
else
	# ...
end

