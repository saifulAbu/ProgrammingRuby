#bad example, almost identical repeated code
print "(t)imes or (p)lus: "
operator = gets
print "number: "
number = Integer(gets)

if operator =~ /^t/
	puts (1..10).collect {|n| n * number}.join(", ")
else
	puts (1..10).collect {|n| n + number}.join(", ")
end

:w
#better code
if operator =~ "/^t/"
	calc = lambda {|n| n * number}
else
	calc = lambda {|n| n + number}
end

puts ((1..10).collect(&calc).join(", "))
