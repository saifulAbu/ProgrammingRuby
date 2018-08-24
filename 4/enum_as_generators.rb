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

