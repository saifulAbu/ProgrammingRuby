# unpreferable way
top_five = {dog: 7, cat:6, cow: 5, lion: 4, lizard: 3, sheep: 2, squirrel: 1, rat: 0}

for i in 0..4
	word = top_five[i][0]
	count = top_five[i][1]
	puts "#{word}: #{count}"
end

# iterator
top_five.each do|word, count|
	puts "#{word}: #{count}"
end

# map
puts top_five.map{|word, count| "#{word}: #{count}"}

some_array = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9}
# curly braced block
some_array.each {|value| puts value * 3}

# do end block
some_array.each do |value|
	sum += value
	puts value / sum
end



