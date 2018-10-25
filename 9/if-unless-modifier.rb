mon, day, year = $1, $2, $3 if date =~ /(\d\d)-(\d\d)-(\d\d)/
puts "a = ${a}" if $DEBUG
print total unless total.zero?

File.foreach("/etc/passwd") do |line|
	next if line=~ /^#/
	parse(line) unless line =~ /^$/
end

# basically remove all if(!(condition)) with unless condition
