a = b = 1 + 2 + 3
a
b
a = (b = 1 + 3) + 3
a
b

File.open(name=gets.chomp)

# two basic forms of assignment
instrument = "piano"
MIDDLE_A = 440

class ProjectList
	def initialize
		@projects = []
	end
	def projects=(list)
		@projects = list.map(&:upcase)
	end
	def [](offset)
		@projects[offset]
	end
end

list = ProjectList.new
list.projects = %w{strip sand prime sand paint sand paint rub paint}
list[3]
list[4]

# the value of the assingment is always the value of the parameter
class Test
	def val=(val)
		@val = val
		return 99
	end
end

t = Test.new
result = (t.val = 2) 
result # => 2
