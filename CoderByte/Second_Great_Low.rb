# Using the Ruby language, have the function SecondGreatLow(arr) 
# take the array of numbers stored in arr and return the second 
# lowest and second greatest numbers, respectively, separated by 
# a space. For example: if arr contains [7, 7, 12, 98, 106] the 
# output should be 12 98. The array will not be empty and will 
# contain at least 2 numbers. It can get tricky if there's just two numbers! 

# Use the Parameter Testing feature in the box below to test your 
# code with different arguments.


def SecondGreatLow(arr)
  arr = arr.uniq.sort
  answer = []

  if arr.length == 1
    answer << arr[0] << arr[0] 
  elsif arr.length == 2
    answer = arr
  elsif arr.length == 3
    answer << arr[1] << arr[2] #todo: see if this works
  else
    answer << arr[1] << arr[-2]
  end

answer.join(" ")
end

p SecondGreatLow([80,80])



# better
# def SecondGreatLow(arr)
#    arr.uniq!
#    return arr.join(' ') if arr.size == 2 
#    arr.delete(arr.max)
#    arr.delete(arr.min)
#    return arr.min.to_s + ' ' + arr.max.to_s
# end