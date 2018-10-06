# method name can end with ?, ! or =
# method that return boolean result often end with ?
p 1.even?
p 2.even?

# method that modify their receivers are ofthen end with !

# methods that can be on left side of an assignment can end with a =

# parameters, are bunch of local variables wrapped around optional braces
def my_new_method(arg1, arg2, arg3)
	# code for method will go here
end

# methods with no argument 
def my_other_new_method
	# code for my other new method goes here
end

#methods with default params
def cool_dude(arg1="miles", arg2="coltrane", arg3="roach")
	"#{arg1}, #{arg2}, #{arg3}"
end

# calling method
p cool_dude
p cool_dude("Bart")
p cool_dude("Bart", "Elwood")
p cool_dude("Bart", "Elwood", "Linus")

# example where default argumetn references previous arg
def surround(word, pad_width=word.length/2)
	"[" * pad_width + word + "]" * pad_width
end

p surround("elephant")
p surround("fox")
p surround("fox", 10)

