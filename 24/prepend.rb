module VanityPuts
	def puts(*args)
		args.each do |arg|
			super("Dave says : #{arg}")
		end
	end
end

class Object
	prepend VanityPuts
end

puts "Hello and", "goodbye"
