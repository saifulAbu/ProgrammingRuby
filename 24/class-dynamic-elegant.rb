class Person < Struct.new(:name, :address, :likes)
	def to_s
		"#{self.name} lives in #{self.address} and likes #{self.likes}"
	end
end

dave = Person.new("dave", "texas")
dave.likes = "programming languages"
puts dave
