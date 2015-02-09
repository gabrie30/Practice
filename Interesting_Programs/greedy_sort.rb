def greedy_sort(n)
  coins = [1,5,10,25]
  coins.reverse!
  answer = []
  i = 0
  while n > 0
    if coins[i] <= n
      answer << coins[i]
      n -= coins[i]
    else
      i += 1
    end
  end
answer
end

p greedy_sort(59)