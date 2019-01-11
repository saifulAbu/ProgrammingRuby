"cat".instance_eval do 
	puts "Upper case = #{self.upcase}"
	puts "Length is #{length}"
end

"cat".instance_eval('puts "Upper=#{upcase}, length = #{self.length}"')
