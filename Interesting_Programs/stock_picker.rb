def stox_picker(price_per_day)

i = 0
max_profit = 0
entry_exit_points = []
days = []

  while i < price_per_day.length-1 
    j = i + 1
    while j < price_per_day.length
    	profit = (price_per_day[j] - price_per_day[i])
      	if profit > max_profit
      	  max_profit = profit
          entry_exit_points << [price_per_day[i],price_per_day[j]] # the last item in the array will have the highest profit
          days << [i+1,j+1] # using the index for days
      	end
    	j += 1
    end
    i += 1
   end
"Buy at price #{entry_exit_points.last[0]} on day #{days.last[0]}, sell at #{entry_exit_points.last[1]} on day #{days.last[1]} for maximum profit of #{max_profit}."
end

puts stox_picker([1000,10,1,6,99,12,1000,505,43,2])