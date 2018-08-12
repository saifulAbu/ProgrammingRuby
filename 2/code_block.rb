def call_block
	puts "Start of method"
	yield
	yield
	puts "End of method"
end

#block without parameters
call_block {puts "In the block"}

#block with parameters
def who_says_what
	yield("Dave", "hello")
	yield("Andy", "goodbye")
end

who_says_what {|person, phrase| puts "#{person} says #{phrase}"}


#example of block in ruby library
animals = %w( ant bee cat dog )
animals.each {|animal| puts animal}

5.times { print "*" }
3.upto(6) {|i| print i}
('a'..'e').each {|char| print char}
puts
