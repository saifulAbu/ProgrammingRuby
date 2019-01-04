module GeneralLogger
	def log(msg)
		puts Time.now.strftime("%H:%M ") + msg
	end

	module ClassMethods
		def attr_logger(name)
			attr_reader name
			define_method("#{name}=") do |val|
				log "Assigning #{val.inspect} to #{name}"
				instance_variable_set("@#{name}", val)
			end
		end
	end

	def self.included(host_class)
		host_class.extend(ClassMethods)
	end
end

class Example
	include GeneralLogger

	attr_logger :value
end

ex = Example.new
ex.log("new example created")
ex.value = 123
puts "value is #{ex.value}"
ex.value = "cat"
puts "value is #{ex.value}"
