some_class = Class.new(String) do
	def vowel_movement
		tr 'aeiou', '*'
	end
end

obj = some_class.new("now is the time")
puts obj.vowel_movement


