"John Coltrane".send(:length)
"Miles Davis".send("sub", /iles/, '.')

# use method object
trane = "John Coltrane".method(:length)
miles = "Miles Davis".method("sub")

puts trane.call
puts miles.call(/iles/, '.')

# method objects can be used where we would use a proc object
def double(a)
	2 * a
end

method_object = method(:double)
puts [ 1, 3, 5, 7 ].map(&method_object)


