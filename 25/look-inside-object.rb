r = 1..10

# list methods it responds to, and access their name
list = r.methods
list.length 
list[0..3]

# check if an object responds to a particular method
r = 1..10
r.respond_to?("frozen?")
r.respond_to?(:hask_key?)
"me".respond_to?("==")

# access object's class, unique id etc
num = 1
num.object_id
num.class

#num.kind_of? Fixnum
#num.kind_of? Numeric
num.instance_of? Fixnum
#num.kind_of? false

