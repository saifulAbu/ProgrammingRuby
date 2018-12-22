class Test
	@var = 99
	class << self
		attr_accessor :var
	end
end

puts "original value = #{Test.var}"
Test.var = "cat"
puts "New value = #{Test.var}"
