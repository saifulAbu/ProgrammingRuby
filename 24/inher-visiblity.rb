class Base
	def a_method
		puts "got here"
	end
	private :a_method
end

class Derived1 < Base
	def a_method
		super
	end
end

a = Derived1.new
a.a_method
