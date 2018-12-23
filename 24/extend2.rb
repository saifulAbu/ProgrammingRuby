module Humor
	def tickle
		puts "#{self} says hee, hee!" 
	end
end

class Grouchy
	extend Humor
end

Grouchy.tickle
