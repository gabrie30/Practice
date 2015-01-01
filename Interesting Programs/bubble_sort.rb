def bubble_sort(list)

  i = 0
  while i < list.length
    j = 0
      while j < list.length-1
        if list[j] > list[j+1] 
          list[j], list[j+1] = list[j+1], list[j]
        end
        j += 1
      end
    i += 1
  end
list
end

p bubble_sort([6,5,4,3,2,8,9,1,10])