require './show_match.rb'

str = "this is \nthe time"
p show_regexp(str, /^the/) #start of line
p show_regexp(str, /is$/)  #end of line
p show_regexp(str, /\Athis/) #start of line
p show_regexp(str, /\Athe/) 
# \b matches beginning or end of a string
# \B matches not beginning or end of a string
p show_regexp(str, /\bis/) # word boundaries
p show_regexp(str, /\Bis/) # non-word boundaries






