module Mod
	def greeting
		"hello"
	end
end

class Example
	include Mod
end

ex = Example.new
puts "Before change, greeting is #{ex.greeting}"

module Mod
	def greeting
		"Hi"
	end
end

puts "after change, greeting is #{ex.greeting}"


