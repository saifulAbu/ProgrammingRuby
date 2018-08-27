class ProcExample
	def pass_in_block(&action)
		@stored_proc = action
	end

	def use_proc(param)
		@stored_proc.call(param)
	end
end

eg = ProcExample.new
eg.pass_in_block { |param| puts "The param is #{param}" }
eg.use_proc(7)

#return value as block

class ProcExample
	def create_block_object(&block)
		block #returns object of class Proc
	end
end

bo = create_block_object { |param| puts "You called me with #{param}" }

bo.call 99
bo.call "cat"

# using lambda method to create block object
bo = lambda {|param| puts "You called me with #{param}" }
bo.call 7


