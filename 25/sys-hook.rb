class Object
	alias_method :old_system, :system
	def system(*args)
		old_system(*args).tap do |result|
			puts "system(#{args.join(', ')}) returned #{result.inspect}"
		end
	end
end

system("date")
system("kangaroo", "-hop 10", "skippy")
