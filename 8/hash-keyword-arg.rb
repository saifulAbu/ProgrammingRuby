class SongList
	def search(field, param)
		p field
		p param
	end
end

list = SongList.new
#worse style
list.search(:titles, {genre: "jazz", duration_less_than: 289})

#better style, no braces required for hash params 
list.search(:titles, genre: "jazz", duration_less_than: 289) 

# prior to ruby 2, validating valid options passed
def search(field, options)
	options = {duration: 120}.merge(options)
	if options.has_key?(:duration)
		duration = options[:duration]
		options.delete(:duration)
	end
	if options.has_key?(:genre)
		genre = options[:genre]
		options.delete(:genre)
	end
	fail "Invalid options: #{options.keys.join(', ')}" unless options.empty?
end

# with ruby 2
def search_2(field, genre: nil, duration: 120)
	p [field, genre, duration]
end

# method calling
search_2(:title)
search_2(:title, duration:432, genre: "jazz")

# collect extra hash arguments as a hash parameter
def search_3(field, genre: nil, duration: 120, **rest)
	p [field, genre, duration, rest]
end

search_3(:title, duration:432, stars: 3, genre: "jazz", tempo: "slow")

#arguments are passed as hashes
options = {duration: 432, starts: 3, genre: "jazz", tempo: "slow"}
search_3(:title, options)
