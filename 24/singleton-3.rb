animal = "dog"
def animal.speak
	puts "The #{self} says woof!"
end

singleton = class << animal
	def lie
		puts "The #{self} lies down"
	end
	self
end

animal.speak
animal.lie
puts "singleton class object is #{singleton}"
puts "it defines methods #{singleton.instance_methods - 'cat'.methods}"

