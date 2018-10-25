case 
when song.name = "misty"
	puts "not again"
when song.duration > 120
	puts "too long"
when Time.now.howr > 21
	puts "it's too late"
else 
	song.play
end


