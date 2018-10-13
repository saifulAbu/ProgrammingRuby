def five(a, b, c, d, e)
 p "I was passed #{a}, #{b}, #{c}, #{d}, and #{e}"
end

five(1, 2, 3, 4, 5)
five(1, 2, 3, *['a', 'b'])
five(*['a', 'b', 'c'], 1, 2)
five(*(10..14))
five(*[1,2], 3, *(4..5))

