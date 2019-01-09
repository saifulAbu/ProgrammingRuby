def MyStruct(*keys)
	Class.new do
		attr_accessor *keys
		def initialize(hash)
			hash.each do |key, value|
				instance_variable_set("@#{key}", value)
			end
		end
	end
end

Person = MyStruct :name, :address, :likes
dave = Person.new(name: "dave", address: "TX", likes: "Stillon")
chad = Person.new(name: "chad", likes: "Jazz")
chad.address = "Berlin"

puts "Dave's name is #{dave.name}"
puts "Chad lives in #{chad.address}"

