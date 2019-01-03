module AttrLogger
	def attr_logger(name)
		attr_accessor name
		define_method("#{name}=") do |val|
			puts "Assigning #{val.inspect} to #{name}"
			#self.name = val
			instance_variable_set("@#{name}", val)
		end
	end
end

class Example
	extend AttrLogger
	attr_logger :value
end

ex = Example.new
ex.value = 123
puts "Value is #{ex.value}"
ex.value = "cat"
puts "valuse is now #{ex.value}"
