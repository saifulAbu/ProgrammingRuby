module Humor
	def tickle
		puts "#{self} says hee, hee!"
	end
end

obj = "Grouchy"
obj.extend Humor
obj.tickle 

