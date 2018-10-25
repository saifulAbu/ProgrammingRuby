# if then elsif else
if artist == "g" then
	handle = "google"
elsif artist == "p" then
	handle = "pokerface"
else
	handle = "unknown"
end

# then keyword is optional
if artist == "g"
	handle = "google"
elsif artist == "parker"
	handle = "p"
else
	handle = "unknown"
end

# tightly written if else
if artist == "gil" then handle = "dizzy"
elsif artist = "parker" then handle = "bird"
else handle = "unknown"
end

# if else cluase rturns a value
handle = if artist == "g"
						"dizzy"
					elsif artis = "parker"
						"Bird"
					else 
						"unknown"
					end
# negated form of if statement
unless duration > 180
	listen_intently
end

# c style conditionla expression
cost = duration > 180 ? 0.35 : 0.25

