# two dot form, inclusive
puts 1..10
puts 'a'..'z'
# 3 dots form, exclusive of the high value
puts 0...'cat'.length

#converting to array
p (1..10).to_a
p ('bar'..'bat').to_a

#converting to enum
enum = ('bar'..'bat').to_enum
p enum.next
p enum.next

