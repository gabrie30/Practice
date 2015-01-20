# Write a function, `nearest_larger(arr, i)` which takes an array and an
# index.  The function should return another index, `j`: this should
# satisfy:
#
# (a) `arr[i] < arr[j]`, AND
# (b) there is no `j2` closer to `i` than `j` where `arr[i] < arr[j2]`.
#
# In case of ties (see example below), choose the earliest (left-most)
# of the two indices. If no number in `arr` is larger than `arr[i]`,
# return `nil`.
#
# Difficulty: 2/5

def nearest_larger(arr,i)
  target = arr[i]
  
  up_idx = i
  down_idx = i

  until up_idx == arr.length-1 && down_idx == 0
    
    if down_idx !=0
      down_idx -= 1
    end

    if up_idx != arr.length-1
      up_idx += 1
    end

    if arr[down_idx] > target
      return down_idx
    elsif arr[up_idx] > target
      return up_idx
    end

  end
nil
end

p nearest_larger([2,3,4,8], 2)#.should == 3
p nearest_larger([2,8,4,3], 2)#.should == 1
p nearest_larger([2,6,4,8], 2)#.should == 1
p nearest_larger([2,6,4,6], 2)#.should == 1
p nearest_larger([8,2,4,3], 2)#.should == 0
p nearest_larger([2,4,3,8], 1)#.should == 3
p nearest_larger([2, 6, 4, 8], 3)#.should == nil
p nearest_larger([2, 6, 9, 4, 8], 3) #.should == 2
# 
# 