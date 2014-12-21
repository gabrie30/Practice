# Write a method that takes an integer `n` in; it should return
# n*(n-1)*(n-2)*...*2*1. Assume n >= 0.
#
# As a special case, `factorial(0) == 1`.
#
# Difficulty: easy.

## Solving iteratively ##
# def factorial(n)
#   if n == 0
#     return 1
#   end
#
#   result = 1
#   while n > 0
#     result *= n
#     n -= 1
#   end
# result
# end
#
# p factorial(4)
##

## Solving recusively ##
# def factorial(n)
#   if n == 0 || n == 1
#     return 1
#   end
# 
#   n * factorial(n-1)
# end
# 
# p factorial(5)
##
