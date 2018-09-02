# Bad practise, a mixin that requires a member variable should be rewritten as a class
module Test
	State = {}
	def state=(value)
		State[object_id] = value
	end
	def state
		State[object_id]
	end
end

class Client
	include Test
end
