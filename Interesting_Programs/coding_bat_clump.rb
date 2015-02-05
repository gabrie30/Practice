## CodingBat Clumps ##

# Say that a "clump" in an array is a series of 2 or more adjacent elements of the same value. 
# Return the number of clumps in the given array. 

# countClumps({1, 2, 2, 3, 4, 4}) → 2
# countClumps({1, 1, 2, 1, 1}) → 2
# countClumps({1, 1, 1, 1, 1}) → 1

def clump(arr)
  clumps = 0
  i = 0

  while i < arr.length
    j = i
    count = 0

      while arr[i] == arr[j]
        count += 1
        j += 1
      end

    if count >= 2
      clumps += 1
    end

    i += count
  end
clumps
end

p clump([1,1,1,3])