same = "12:15-12:45"
differ = "12:45-13:15"

# match six characters
pat = /(...)\1/ 
p pat =~ 'abcabc'
p pat =~ 'abcaba'
