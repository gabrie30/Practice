# Sort two acending lists into one sorted list
def sort(arr1, arr2)

  i1= 0
  i2 = 0
  answer = []
  while i1 < arr1.length && i2 < arr2.length 
    if arr1[i1] < arr2[i2]
      answer << arr1[i1]
      i1 += 1
    else
      answer << arr2[i2]
      i2 += 1
    end
  end

  if i2 < arr2.length
    while i2 < arr2.length
      answer << arr2[i2]
      i2 += 1
    end
  else
    while i1 < arr1.length
      answer << arr1[i1]
      i1 += 1
    end
  end
answer
end

sort([1,3,5,7],[2,4,6,8,10])
