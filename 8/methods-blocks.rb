def double(p1)
	yield(p1 * 2)
end

p double(3) { |val| "I got #{val}" }
p double("tom") {|val| "then I got #{val}"}

# last param is prefixed by &, the lambda gets converted to block object
class TaxCalculator
	def initialize(name, &block)
		@name, @block = name, block
	end
	def get_tax(amount)
		"#@name on #{amount} = #{ @block.call(amount) }"
	end
end

tc = TaxCalculator.new("Salex tax") {|amt| amt * 0.075 }

p tc.get_tax(100)
p tc.get_tax(250)
