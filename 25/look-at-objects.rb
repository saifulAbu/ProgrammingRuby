a = Complex(1,2)
b = Complex(99, -100)

ObjectSpace.each_object(Complex) {|x| puts x}

c = 102
d =101
ObjectSpace.each_object(Fixnum) {|x| p x} # produces no output, as the objectspace does not know about immediate values
