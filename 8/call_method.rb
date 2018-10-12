class InvoiceWriter
	def initialize(order)
		write_header(order)
	end
	def write_header(output)
		puts output
	end
end

a = InvoiceWriter.new("hello")

# passing params
b = a.hash()
b = a.hash # same as the one above

# obj.somemethod(a, b, c) same as
# obj.somemethod a, b, c

# all methods returns a value. usually the last executed statement
def meth_one
	"one"
end

def meth_two(arg)
	case
	when arg > 0 then "positive"
	when arg < 0 then "negative"
	else "zero"
	end
end

meth_two(23)
meth_two(0)

# return statement can return comma separated stuffs. those will be returned with array
def meth_three
	return 1, 2, 3
end

a, b, c = meth_three 
d = meth_three # d <- [1, 2, 3]

p a
p b
p c
p d
