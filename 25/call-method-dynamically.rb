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

unbound_length = String.instance_method(:length)

class String
	def length
		99
	end
end

# bind instance method
str = "cat"
puts str.length
bound_length = unbound_length.bind(str)
bound_length.call

# eval
trane = %q{ "John Coltrane".length }
miles = %q{ "Miles Davis".sub(/iles/, '.')  }

eval trane
eval miles

# binding a state of an object
def get_a_binding
	val = 123
	binding
end

val = "cat"

the_binding = get_a_binding
eval("val", the_binding)
eval("val")
