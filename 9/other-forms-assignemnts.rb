class List
	def initialize(*values)
		@list = values
	end
	def +(other)
		@list.push(other)
	end
end

a = List.new(1,2)
a + 3
p a
a += 4
p a
