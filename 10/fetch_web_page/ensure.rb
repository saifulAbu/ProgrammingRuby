f = File.open("testfile")

begin
	# process
rescue 
	# handle error
ensure
	f.close
end

# else clause for no error
f = File.open("testfile")
begin
	# process
rescue 
	# handle error
else
	puts "congratz no erros"
ensure
	f.close
end

# retry
@estmp = true

begin
	if @estmp then @comand.ehlo(helodom)
						else @command.helo(heldom)
	end
rescue ProtocolError
	if @estmp then
		@estmp = false
		retry
	else
		raise
	end
end

