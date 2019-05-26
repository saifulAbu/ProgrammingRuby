require 'yaml'

class Special
	def initialize(valuable, volatile, precious)
		@valuable = valuable
		@volatile = volatile
		@precious = precious 
	end

	def encode_with(properties)
		properties['precious'] = @precious
		properties['valuable'] = @valuable
	end

	def to_s
		"#@valuable #@volatile #@precious"
	end
end

obj = Special.new("Hello", "there", "world")

puts "before: obj = #{obj}"
data = YAML.dump(obj)
obj = YAML.load(data)
puts "after: obj = #{obj}"

