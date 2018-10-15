class Parent
	def do_something(*param)
		puts "#{param.inspect}"
	end
end

class Child < Parent
	def do_something(*not_used)
		super
		# processing
	end
end

def split_apart(first, *splat, last)
	puts "First: #{first.inspect}, splat: #{splat.inspect}, last: #{last.inspect}"
end

a = Child.new
a.do_something(1, 2, 3, 4, 5) 

split_apart(1, 2)
split_apart(1, 2, 3)
split_apart(1, 2, 3, 4)

# making blocks more dynamic page 121
