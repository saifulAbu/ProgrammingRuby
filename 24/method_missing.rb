def method_missing(name, *args, &block)
	puts "called #{name} with #{args.inspect} and #{block}"
end

wibble
wobble 1, 2
wurble(3, 4) {stuff}

