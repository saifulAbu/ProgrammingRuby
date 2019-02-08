module ClassMethod
	def attr_logger name
		attr_reader(name)
		define_method("#{name}=") do |val|
			log "Assigning #{val.inspect} to #{name}"
			instance_variable_set("@#{name}", val)
		end
	end
end

module InsMethod
	def log(msg)
		puts msg
	end
	
	def self.included(host_class)
		host_class.extend ClassMethod
	end
end

class Example
	include InsMethod

	attr_logger :value
end

ex = Example.new
ex.log "New example"
ex.value = 45

