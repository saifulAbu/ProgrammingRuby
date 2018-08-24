triangular_numbers = Enumerator.new do |yielder|
	number = 0
	count = 1
	loop do
		number += count
		count += 1
		yielder.yield number
	end
end

# enumeration operation
5.times { print triangular_numbers.next, " "}

# enum's usual methods can be found
p triangular_numbers.first(5)

# infinite select
def infinite_select(enum, &block)
	Enumerator.new do |yielder|
		enum.each do |value|
			yielder.yield(value) if block.call(value)
		end
	end
end

p infinite_select(triangular_numbers) {|val| val % 10 == 0}.first(5)

# select from inifinite sequence is more convenient if the inifinite_select method is put in the Enumerator class

class Enumerator 
	def infinite_select(&block)
		Enumerator.new do |yielder|
			self.each do |value|
				yielder.yield(value) if block.call(value)
			end
		end
	end
end

p triangular_numbers
	.infinite_select {|val| val % 10 == 0}
	.infinite_select {|val| val.to_s =~ /3/}
	.first(5)
