# string match
p /cat/ =~ "dog and cat" #8 
p /cat/ =~ "cat" #0
p /Cat/ =~ "cat" # nil

# string unmatch
p /donkey/ !~ "dog and cat" #true
