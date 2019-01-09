some_class = Class.new
obj = some_class.new
puts "initial name is #{some_class.name}"
SomeClass = some_class
puts "then the name is #{some_class.name}"
puts "also works via the object : #{obj.class.name}"
