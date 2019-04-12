class Object
	old_system_method = instance_method(:system)
	define_method(:system) do |*args|
		old_system_method.bind(self).call(*args).tap do |result|
			puts "system(#{args.join(', ')}) returned #{result.inspect}"
		end
	end
end

system("date")
system("kangaroo", "-hop 10", "skippy")
