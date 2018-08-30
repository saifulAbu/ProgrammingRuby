class Parent
	def say_hello
		puts "Hello from #{self}"
	end
end

p = Parent.new
p.say_hello

# inherit parent
class Child < Parent
end

c = Child.new
c.say_hello

# check parent
Child.superclas # Parent
Parent.superclass # Object

class Person
	def initialize(name)
		@name = name
	end

	def to_s
		"Person named #{@name}"
	end
end
p = Person.new("Michael")
puts p

