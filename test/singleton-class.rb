man = "human"

sc = class << man
	def speak
		"human speaks"
	end
	self
end

puts man.upcase
puts man.speak
