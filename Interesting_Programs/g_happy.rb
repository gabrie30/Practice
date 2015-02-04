
# We'll say that a lowercase 'g' in a string is "happy" if there is 
# another 'g' immediately to its left or right. Return true if all the 
# g's in the given string are happy. 

# gHappy("xxggxx") → true
# gHappy("xxgxx") → false
# gHappy("xxggyygxx") → false

def ghappy(str)

  i = 0
  while i < str.length
    if str[i] == "g" && str[i+1] != "g"
      return false
    else
      i += 1
    end
    i += 1
  end

  str.include?("g") ? true : false

end

p ghappy("xxggyyggxxg")