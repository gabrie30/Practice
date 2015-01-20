# remove dupes

def find_uniques(arr)
  i = 0
  uniques = []
  while i < arr.length
    unless uniques.include?(arr[i])
      uniques << arr[i]
    end
    i += 1
  end
  uniques
end

p find_uniques([2,2,3,4,5,5,6,7,8,4,3,5,4,5,7,8,9,7,6,5])