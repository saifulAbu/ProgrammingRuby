class Triangle
	SIDES = 3
	def area
		puts "from triangle area"
	end
end

class Square
	SIDES = 4
	def area
		puts "from square area"
	end
end

puts "A triangle has #{Triangle::SIDES} and Square has #{Square::SIDES}"

tr = Triangle.new()
sq = Square.new

tr.area
sq.area
