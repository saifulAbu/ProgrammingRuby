animal = "dog"
class << animal
	def speak
		puts "the #{self} says woof!"
	end
end

puts animal.speak
