require './show_match.rb'

#escapaing special characters
p show_regexp('yes | no', /\|/)
p show_regexp('yes (no)', /\(no\)/)
p show_regexp('are you sure?', /e\?/)
