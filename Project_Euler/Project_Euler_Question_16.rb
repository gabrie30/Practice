# Problem 16
# 2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
# What is the sum of the digits of the number 2^1000?


def power(number)
  solved = 2 ** number
  numbers = solved.to_s.split("")
  int_arr = numbers.map { |x| x.to_i }
  int_arr.inject(:+)
end

p power(1000)