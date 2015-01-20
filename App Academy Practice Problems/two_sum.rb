# Write a method that finds if an array of numbers has a pair that sums to zero. Be careful of the case of zero; there need to be two zeroes in the array to make a pair that sums to zero.

def sums_zero?(arr)
  if arr.count(0) >= 2
    return true
  end

  i = 0
  while i < arr.length
    j = i+1
      while j < arr.length
        if arr[i] + arr[j] == 0
          return true
        end
        j += 1
      end
    i += 1
  end
false
end

p sums_zero?([1,2,3,4,3,2,-2,2,3])