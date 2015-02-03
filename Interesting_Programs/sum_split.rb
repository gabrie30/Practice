# Given a non-empty array, return true if there is a place to split the array so that 
# the sum of the numbers on one side is equal to the sum of the numbers on the other side. 


def sum_split(arr)
  i = 0
  while i < arr.length
    if arr[0..i].inject(:+) == arr[(i+1)..(arr.length-1)].inject(:+)
      return true
    end
    i += 1
  end
false
end

p sumsplit([101,10,10,1,100])
