word_list = ["ab", 'c', 'd', 'dog']
catch (:done) do
	result = []
	word_list.each do
		|line|
		word = line.chomp
		throw :done unless word =~ /^\w+$/
		result << word
	end
	puts result.reverse
end
puts "hello world!"

word_list = ['a', 'bc', 'def', 'ghij']
word_in_error = catch(:done) do
	result = []
	word_list.each do |line|
		word = line.chomp
		throw(:done, word) unless word =~ /^\w+$/
		result << word
	end
	puts result.reverse
end
if word_inerror
	puts "Failed: #{word_in_error} found, but a word was expected"
end


