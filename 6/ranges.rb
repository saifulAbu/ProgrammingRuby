# two dot form, inclusive
puts 1..10
puts 'a'..'z'
# 3 dots form, exclusive of the high value
puts 0...'cat'.length

#converting to array
p (1..10).to_a
p ('bar'..'bat').to_a

#converting to enum
enum = ('bar'..'bat').to_enum
p enum.next
p enum.next

# example of methods
digits = 0..9
digits.include?(5) # true
digits.max   # 9
digits.reject {|i| i < 5} # [5, 6,7,8,9]
digits.inject(:+) # 45

# user specified range
class PowerOfTwo
	attr_reader :value
	def initialize(value)
		@value = value
	end
	def <=>(other)
		@value <=> other.value
	end
	def succ
		PowerOfTwo.new(@value + @value)
	end
	def to_s
		@value.to_s
	end
end

p1 = PowerOfTwo.new(4)
p2 = PowerOfTwo.new(32)

puts (p1..p2).to_a

# ranges as intervals
(1..10) === 5 #true
(1..10) === 15 #false
(1..10) === 3.14159 #true

# case statement
car_age = gets.to_f
case car_age
when 0...1
	puts "Brand new"
when 1...3
	puts "Nice and new"
when 3...10
	puts "Reliable but slightly dinged"
when 10...30
	puts "clunker"
else 
	puts "vintage gem"
end

