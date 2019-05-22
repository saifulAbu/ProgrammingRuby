class Special
	def initialize(valuable, volatile, precious)
		@valuable = valuable
		@volatile = volatile
		@precious = precious
	end

	def marshal_dump
		[@valuable, @precious]
	end

	def marshal_load(variables)
		@valuable = variables[0]
		@precious = variables[1]
		@volatile = "unknonw"
	end

	def to_s
		"#@valuable #@precious #@volatile "
	end
end

obj = Special.new("Hello", "there", "World")
puts "Befor: obj = #{obj}"
data = Marshal.dump(obj)

obj = Marshal.load(data)
puts "After: obj = #{obj}"


