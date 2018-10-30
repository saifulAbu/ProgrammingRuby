# while loop
while line = gets
 # ...
end

# until 
until play_list.duration > 60
	play_list.add(song_list.pop)
end

#statement modifier
a = 1
a *= 2 while a < 100
a -= 10 until a < 100

# times
3.times do
	print "Ho! "
end

# upto
0.upto(9) do |x|
	print x, " "
end

# step
0.step(12, 3) {|x| print x, " "}

# loop
loop do
  # block...
end

# for..in
for song in playlist
	song.play
end

# is a syntactacit sugar for the following
playlist.each do |song|
	song.play
end

# 
for i in [1, 2, 3, 4]
	print i
end

for i in 1..3
	print i
end

# class
class Periods
	def each
		yield "classical"
		yield "jazz"
		yield "rock"
	end
end

periods = Periods.new
for genre in periods
	print genre
end
