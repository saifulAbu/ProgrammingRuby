module A
	class B
		class C
			def initialize
				puts "creating an object of class C"
			end
		end
	end
end

c = A::B::C.new
