a = [3.1419, "pie", 99]
a.class
a.length
a[0]

a = [ 1, 2, 3, 4, 5 ]
# access array using [] operator
# last index = -1
a[-1]
a[-99] #nil

#[start_index, element_count]
a[1, 3]

#[start_index..end_index]

# stack
stack = []
stack.push "red"
stack.push "green"
stack.push "blue"
stack

stack.pop
stack.pop
stack.pop
stack

# queue
queue = []
queue.push "red"
queue.push "green"

queue.shift
queue.shift

# non destructive access
array = [1, 2, 4, 5, 6]
array.first(3)
array.last(2)

# will have to put something

