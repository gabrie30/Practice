def geo?(arr)
  diff = arr[1] / arr[0]
  i = 0
  while i < arr.length-1
    unless arr[i+1] / arr[i] == diff
      return false
    end
   i += 1
   end
  true
end

def arith?(arr)
  diff = arr[1] - arr[0]
  i = 0
  while i < arr.length-1
    unless arr[i+1] - arr[i] == diff
      return false
    end
   i += 1
   end
  true
end


def ArithGeoII(arr)
  if geo?(arr)
    return "Geometric"
  elsif arith?(arr)
    return "Arithmetic"
  end
-1        
end
   
p ArithGeoII([100,200,400,800,1600])