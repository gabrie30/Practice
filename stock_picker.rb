#stock picker method


def stox_picker(price_per_day)

i = 0
max_profit = 0

  while i < price_per_day.length-1

    j = i + 1
      while j < price_per_day.length
      	profit = (price_per_day[j]).to_i - (price_per_day[i]).to_i
      		p profit
      	if profit > max_profit
      	  max_profit = profit

      	  
      	end
      	j += 1
      end
      i += 1
   end
    max_profit
end

     p stox_picker([0,10,6,99,12,1])