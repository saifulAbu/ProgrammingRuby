module Logger
	def log(msg)
		STDERR.puts Time.now.strftime("%H:%M%S ") + "#{self} (#{msg})"
	end
end

class Song
	include Logger
end

s = Song.new
s.log("created")

