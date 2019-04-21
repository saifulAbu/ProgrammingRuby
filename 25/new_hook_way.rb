module SystemHook
	private
	def system(*args)
		super.tap do |result|
			puts "system(#{args.join(', ')}) returned #{result.inspect}"
		end
	end
end

class Object
	prepend SystemHook
end

system("date")
system("kangaroo", "-hop 10", "skippy")

