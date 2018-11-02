# the following would cause an error
[1, 2, 3].each do |x|
	y = x + 1
end

# the following won't change outside x's value
x = "initial value"
y = "initial value"

[1, 2, 3].each do |x|
	y = x + 1
end	

# the following works even if a was not execute. only requirement is 'a' needs to be on the left side of an expression
a = "never used" if false
[99].each do |i|
	a = i
end

# square is affected
square = "yes"
total = 0

[1, 2, 3].each do |val|
	square = val * val
	total += square
end

# square is not affected
square = "yes"
total = 0
[1, 2, 3].each do |val; square|
	square = val * val
	total += square
end

