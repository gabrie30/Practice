def ABCheck(str)
  str = str.split("")
  i = 0
  while i < str.length-3
    p str[i]
      if (str[i].downcase == "a" || str[i].downcase == "b") && (str[i+4].downcase == "a" || str[i+4].downcase == "b")
        return true
      end
    i += 1
    end
   false
end

p ABCheck("noah olbe")