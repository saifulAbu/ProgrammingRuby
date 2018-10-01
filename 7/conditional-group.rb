txt = ["Mr Jones and Sally", "Mr Bond and Ms Moneypenny", "Samsoon and Deliah", "Dr Jekyll and himself", "Ms Hinky Smith and Ms Jones"]
re = %r{(?:(Mrs | Mr | Ms | Dr)\s)? (.*?) \s and \s }x

p txt[0] =~ re
p [$1, $2]
p txt[2] =~ re
p [$1, $2]
