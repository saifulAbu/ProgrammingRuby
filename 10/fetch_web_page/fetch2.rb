require 'open-uri'

page = "podcasts"
file_name = "#{page}.html"
web_page = open("http://pragprog.com/#{page}")
output = File.open(file_name,"w")
begin 
	while line = web_page.gets
		output.puts line
	end
	output.close
rescue Exception
	STDERR.puts "Failed to download #{page}: #{$!}"
	output.close
	File.delete(file_name)
	raise
end

begin 
	eval string
rescue SyntaxError, NameError => boom
	print "String doesn't compile: " + boom
rescue StandardError => bang
	print "Error running script: " + bang
end

