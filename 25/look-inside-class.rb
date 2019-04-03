class Demo
	@@var = 99
	CONST = 1.23
private
	def private_method
	end
protected
	def protected_method
	end
public
	def public_method
		@inst = 1
		i = 1
		j = 2
		local_variables
	end
	def Demo.class_method
	end
end

p Demo.private_instance_methods(false)
p Demo.protected_instance_methods(false)
p Demo.public_instance_methods(false)
p Demo.singleton_methods(false)
p Demo.class_variables
p Demo.constants(false)

demo = Demo.new
p demo.instance_variables

p demo.public_method
p demo.instance_variables
