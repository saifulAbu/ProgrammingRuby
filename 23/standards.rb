# some kind of decent representation to_i, to_s

# strict conversion functions, to_str, to_int

class File
	def self.new(file, *args)
		if file.respond_to?(:to_int)
			IO.new(file.to_int, *args)
		else
			name = file.to_str
		end
	end
end
