class Test
	def test
		a = 1
	end
end

TracePoint.trace do |tp|
	p tp
end

t = Test.new
t.test
