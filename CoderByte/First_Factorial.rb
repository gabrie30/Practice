# Using the Ruby language, have the function FirstFactorial(num) take the num parameter being passed and return the factorial of it (ie. if num = 4, return (4 * 3 * 2 * 1)). For the test cases, the range will be between 1 and 18. 

# Use the Parameter Testing feature in the box below to test your code with different arguments.

# Wanted to solve this without using the .inject(:*) method

def FirstFactorial(num)
  arr = [*1..num]
  i = 0
  answer = 1
  while i < arr.length
    answer *= arr[i]
    i += 1
  end
answer
end

p FirstFactorial(5)
