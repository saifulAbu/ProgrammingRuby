def power_proc_gen
	value = 1
	lambda { value += value }
end

pp = power_proc_gen

puts pp.call
puts pp.call
puts pp.call
