# X followed by no 'O'
re = /(X+)(?!O)/

# works
re =~ "test XXXY"
p $1

# does not work
re =~ "test XXXO"
p $1

# inhibit backtracking with (?>reg_exp) -> matched reg_exp won't be reexamined
re = /((?>X+))(?!O)/
re =~ "test XXXY"
p $1

re =~ "test XXXO"
p $1

re =~ "test XXXO XXXXY"
p $1

# inhibit backtracking with +
re = /(X++)(?!O)/
re =~ "test XXXY"
p $1
re =~ "test XXXO"
p $1
re =~ "test XXXO XXXXXY"
p $1

