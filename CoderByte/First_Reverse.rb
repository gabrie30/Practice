# Using the Ruby language, have the function FirstReverse(str) take the str parameter being 
# passed and return the string in reversed order. 
# Use the Parameter Testing feature in the box below to test your code with different arguments.

# Wanted to solve this without calling the .reverse method

def FirstReverse(str)
  answer = ""
  i = str.length-1
  while i >= 0
    answer << str[i]
    i -=1
  end
  answer
end