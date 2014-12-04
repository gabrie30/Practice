# make this array iteratively [[1,2,3],[4,5,6],[7,8,9]]

start = []
numbers = 1

while start.length < 3
  start << Array.new
end

start_index = 0
while start_index < 3
    while start[start_index].length < 3
        start[start_index] << numbers
          numbers += 1
      end

  start_index += 1

end

p start