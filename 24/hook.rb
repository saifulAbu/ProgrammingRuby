class Shipping
	@children = []
	#hook method
	def self.inherited(child)
		@children << child
	end
	def self.shipping_options(weight, international)
		@children.select {|child| child.can_ship(weight, international)}
	end
end

class MediaMail < Shipping
	def self.can_ship(weight, international)
		!international
	end
end

class FlatRatePriorityEnvelope < Shipping
	def self.can_ship(weight, international)
		weight < 64 && !international 
	end
end

class InternationalFlatRateBox < Shipping
	def self.can_ship(weight, international)
		weight < 9*16 && international
	end
end


