class Test
	def self.abc
		puts "class method getting called"
		def def
			puts "hello there!"
			def ghi
				puts "method ghi"
			end
		end
	end
	
	abc
end

a = Test.new
b = a.def
Test.ghi

