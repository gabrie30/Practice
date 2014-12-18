# Write a method that takes in two numbers. Return the greatest
# integer that evenly divides both numbers. You may wish to use the
# `%` modulo operation.
#
# Difficulty: medium.

def greatest_common_factor(number1, number2)
  arr = (1..number1).to_a
  i = 0
  greatest = 0
  while i < arr.length
    if number1 % arr[i] == 0 && number2 % arr[i] == 0
      greatest = arr[i]
    end
    i += 1
    end
  greatest
end

p greatest_common_factor(3, 9)