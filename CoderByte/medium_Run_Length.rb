def RunLength(str)
  str = str.split("")
  holder = []
  answer = ""
  
  i = 0
  while i < str.length
    current = str[i]
    j = i
    count = 0
      while current == str[j]
        count += 1
        holder << str[j]
        j += 1
      end
    
    how_many = holder.length
    i += count
    answer << how_many.to_s
    answer << holder[0]
    holder = []
  end
 answer     
end

p RunLength("yesssssnomaybe")