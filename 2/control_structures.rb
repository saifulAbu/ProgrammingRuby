today = Time.new

if today.saturday?
	puts "Do chores around the house"
elsif today.sunday?
	puts "Relax"
else
	puts "Go to work"
end

num_pallets = 0
weight = 0
while weight < 100 and num_pallets <=5
	weight = weight + 1
	num_pallets += 1
end

#nil is used as false in conditions
while line = gets
	puts line.downcase
end

# writing single expression
if saif > 0
	puts "do this if a single expression"
end
# re-written
puts "do this if a single expression" if saif > 0

sqr = 4
while sqr < 100
	sqr = sqr * sqr
end
#re-written
sqr = 4
sqr = sqr * sqr while sqr < 1000


