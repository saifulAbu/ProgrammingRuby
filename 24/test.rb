class Test
	puts "In the defifinition of class Test"
	puts "self = #{self}"
	puts "class of self = #{self.class}"
	
	@var = 99
	def self.value_of_var
		@var
	end
end

puts Test.value_of_var

