def MeanMode(arr)
  mean = (arr.inject(:+) / arr.length)
  arr = arr.sort
  
  hash = Hash.new(0)
  arr.each do |n|
    hash[n] += 1
  end

  largest = hash.sort_by {|k, v| v}[-1][0]
  if mean == largest
    return 1
  end
0    
end

def MeanMode(arr)
  mode = arr.max_by { |x| arr.count(x) }       
  mean = arr.reduce(0, :+) / arr.size
  mode == mean ? 1 : 0
end





p MeanMode([4,4,4,6,2])