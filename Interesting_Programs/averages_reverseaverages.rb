def averages(arr)
  averages = []
  i = 0
  sum = 0
  while i < arr.length
    sum += arr[i]
    averages << (sum / (i+1.0))
    i += 1
  end
averages
end

avgs = averages([1,2,3])

def reverse(avgs)
  i = 0
  answer = []
  sum = 0
  while i < avgs.length
    if i == 0
      answer << avgs[i]
      sum += avgs[i]
    else   
      answer << (avgs[i] * (i+1.0)) - sum
      sum += answer[i]
    end
    i += 1
  end
answer
end
p avgs
p reverse(avgs)