# Write a method that takes in an integer `num` and returns the sum of
# all integers between zero and num, up to and including `num`.
#
# Difficulty: easy.

## Using an array ##
# def sum_nums(num)
#   arr = (1..num).to_a
#   arr.inject(:+)
# end
#
# p sum_nums(100)

## Not using an array ##
# def sum_nums(num)
#   i = 0
#   sum = 0
#   while i <= num
#     sum += i
#     i += 1
#   end
# sum
# end
#
# p sum_nums(100)
##