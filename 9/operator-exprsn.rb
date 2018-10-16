# operators are method calls
a, b, c = 1, 2, 3

a * b + c
# is same as calling methods
(a.*(b)).+(c)

#redefining method, considered bad idea
class Fixnum
	alias old_plus +

	def +(other)
		old_plus(other).succ
	end
end

#usage
puts 1 + 2 # returns 4

# example of adding << support on classes
class ScoreKeeper
	def initialize
		@total_score = @count = 0
	end
	def <<(score)
		@total_score += score
		@count += 1
		self # returns self to allow operations such as scores << 10 << 20 << 30 
	end
	def average
		fail "no scores" if @count.zero?
		Float(@total_score) / @count
	end
end

scores = ScoreKeeper.new
scores << 10 << 20 << 40
puts "Averages = #{scores.average}"

#index operator
class SomeClass
	def [](p1, p2, p3)
		puts "called with #{p1}, #{p2} and #{p3}"
	end
	def []=(*params)
		value = params.pop
		puts "Indexed with #{params.join(', ')}"
		puts "value = #{value.inspect}"
	end
end

p "override array [] operator"
s = SomeClass.new
s[1] = 2
s['cat', 'dog'] = 'enemies', 'german', 'useless'
s[1,2,3]

