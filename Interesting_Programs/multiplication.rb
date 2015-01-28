def naive(a,b)
  x = a
  y = b
  z = 0

  while x > 0
    z = z + y
    x = x - 1
  end
z
end

p naive(6,5)