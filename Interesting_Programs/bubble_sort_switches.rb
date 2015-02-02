def bubble(arr)

  sorted = true
  while sorted
    sorted = false
    (arr.length-1).times do |i|
      if arr[i] > arr[i+1]
        arr[i], arr[i+1] = arr[i+1], arr[i]
        sorted = true
      end
    end
  end
arr
end

p bubble([4,3,2,1,5,7])