## Using recursion with an array ##
# def append(arr, n)
#   if n == 0
#     arr << 0
#     return arr
#   end
#   arr << n
#   append(arr, n-1)
# end
#
# p append [], 5

# def reverse_append(arr, n)
#   if n < 0
#     return arr
#   end
#
#   reverse_append(arr, n-1)
#   arr << n
#   arr
# end
#
# p reverse_append([], 3)

def fib(n)
  return 0 if n == 0
  return 1 if n == 1
  fib(n-1) + fib(n-2)
end

p fib(6)