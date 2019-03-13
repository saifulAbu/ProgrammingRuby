#exec("sort testfile > output.txt") if fork.nil?

#Process.wait

trap("CLD") do
	pid = Process.wait
	puts "Child pid #{pid} died"
end

fork {exec("sort testfile > output2.txt")}

sleep(30)
