# variables are references
person = "Tim"
puts "class: #{person.class}, id: #{person.object_id}, value: #{person}"

# strings are immutable
person1 = "Tim"
person2 = person1
person1[0] = 'K'

puts "person1 is #{person1}"
puts "person2 is #{person2}"

# duplicate string to create separate instance
person3 = person1.dup

# freeze to make immodifiable
person1.freeze #attempt to change would cause runtime error
