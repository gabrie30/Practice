
# Given two arrays of ints sorted in increasing order, outer and inner, return true if 
# all of the numbers in inner appear in outer. The best solution makes only a single 
# "linear" pass of both arrays, taking advantage of the fact that both arrays are already 
# in sorted order. 

# linearIn({1, 2, 4, 6}, {2, 4}) → true
# linearIn({1, 2, 4, 6}, {2, 3, 4}) → false
# linearIn({1, 2, 4, 4, 6}, {2, 4}) → true


def linear_in(outer, inner)
  

  i = 0
  while i < inner.length
    unless outer.include?(inner[i])
      return false
    end
    i += 1
  end
  true
end

p linear_in([1,2,4,4,6],[2,3,4])