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

# implementing iterators
def two_items
	yield
	yield
end

two_items { puts "hello" }

# block invocation with argument
def fib_up_to(max)
	i1, i2 = 1, 1
	while i1 <= max
		yield i1
		i1, i2 = i2, i1 + i2
	end
end

fib_up_to(1000) {|f| print f, " "}

# obtaining value from block invocation
class Array
	def find
		each do |value|
			return value if yield(value)
		end
		nil
	end
end

[1, 2, 3, 4, 5, 6, 7].find {|v| v * v > 30}  # => 7




