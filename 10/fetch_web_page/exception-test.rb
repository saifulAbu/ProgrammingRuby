def a
	b
end
def b
	c
end
def c
	d
end
def d
	g
end

def g 
begin 
	i = 10 / 0
rescue
	raise
	#raise SecurityError, "Fuckoff"
	raise SecurityError, "Goto hell", caller[0..3] 
end
end

d
