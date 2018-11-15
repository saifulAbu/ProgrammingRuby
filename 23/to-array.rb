class OneTwo
	def to_ary
		[1, 2]
	end
end

ot = OneTwo.new
puts ot


class TwoOne
	def to_a
		[1, 2]
	end
end

to = TwoOne.new
a, b = *to

puts "a = #{a}, b = #{b}"
printf("%d -- %d\n", *ot)

=begin
to_enum -> converts an object to an enumerator
to_hash -> when interpreter expects to see hash
to_int -> interpreters expects to see an integer
to_io -> interperter expects to see a i/0 object
to_proc -> used to convert an object prefixed with an ampersand in a method
=end
class TwoThree
	def to_proc
		proc {"one two"}
	end
	def silly
		yield
	end
end

to = TwoThree.new
silly(&ot)

class ThreeFour
	def to_str
		"three four"
	end
end

tf = ThreeFour.new
puts("count: " + tf)
