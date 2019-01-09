class Example
end

ex = Example.new
puts ex.class

some_class = Class.new
puts some_class.class

some_class = Class.new do
	def self.class_method
		puts "in class method"
	end
	def instance_method
		puts "in instance method"
	end
end

some_class.class_method
obj = some_class.new
obj.instance_method
