class T
	def ==(other)
		puts "comparing self == #{other}"
		other == "value"
	end
end

t = T.new
p (t == "value")
# if != is not defined, ruby calls == and negates the result
p (t != "value")

class T
	def ==(other)
		puts "comparing self == #{other}"
		other == "value"
	end

	def !=(other)
		puts "comparing self != #{other}"
		other != "value"
	end
end

# if != is defined, that method is called
t = T.new
p(t == "value")
p(t != "value")

=begin 
ruby comparision operators
== test for equal values
=== 
<=> returns -1, 0, +1
<, <=, >=, > comparison operators
=~ regular expression pattern match
eql? receiver and arg have both same type and equal values. 1 == 1.0 returns true
equal? true if receiver and arg have same object id
=end

