def cat_a
	puts caller
	puts __callee__
end

def cat_b
	cat_a
end

def cat_c
	cat_b
end

#TracePoint.trace do |tp|
#	p tp
#end

cat_c

