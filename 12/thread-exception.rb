Thread.abort_on_exception = true

threads = 4.times.map do |number|
	Thread.new(number) do |i|
		raise "Boom!" if i == 1
		print "#{i}\n"
	end
end

#puts "waiting"
#sleep 0.1
#puts "done"

puts "waiting"
threads.each do |t|
	begin
		t.join
	rescue RuntimeError => e
		puts "Failed #{e.message}"
	end
end

puts "done"
