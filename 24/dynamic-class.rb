Person = Struct.new(:name, :address, :likes)
class Person
	def to_s
		"#{self.name} lives in #{self.address} and likes #{self.likes}"
	end
end

dave = Person.new("dave", "tx")
dave.likes = "programming languages"
puts dave
