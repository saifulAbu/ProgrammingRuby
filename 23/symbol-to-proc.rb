names = %w{ant bee cat}
result = names.map{|name| name.upcase}

# concise part
names = %w{ant bee cat}
result = names.map(&:upcase)

