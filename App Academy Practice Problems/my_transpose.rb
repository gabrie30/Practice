
def my_transpose(arr)
  transposed_arr = Array.new(arr.length) { Array.new(arr.length) } # creates a n by n array
  arr.each_with_index do |_, i|
    arr.each_with_index do |_, j|
      transposed_arr[i][j] = arr[j][i]
    end
  end
  transposed_arr
end


rows = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ]


cols = [
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8]
]

p my_transpose(cols)
p my_transpose(rows)