class MyClass
end

MyClass.class_eval do
	def instance_method
		puts "In an instance method"
	end
end

obj = MyClass.new
obj.instance_method

class MyClass
end

MyClass.instance_eval do
	def class_method
		puts "in a class method"
	end
end
MyClass.class_method
