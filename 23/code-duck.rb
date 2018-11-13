def append_song(result, song)
	unless result.kind_of?(String)
		fail TypeError.new("String expected")
	end

	unless song.kind_of?(Song)
		fail TypeError.new("Song expected")
	end
	result << song.title << " (" << song.artist << ")"
end

result = ""
append_song(result, song)

#with ducktyping
def append_song(result, song)
	result << song.title << " (" << song.artist << ")"
end

#checking for method is possible with ducktyping but not considered as a good practise
def append_song(result, song)
	unless result.respond_to?(:<<)
		fail TypeError.new("'result' needs '<<' capability" )
	end
	unles song.respond_to?(:artist) && song.respond_to?(:title)
		fail TypeError.new("'song' needs 'artist' and 'title'")
	end
	result << song.title << " (" << song.artist << ")"
end

result = ""
append_song(result, song)

