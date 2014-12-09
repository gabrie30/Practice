#For this challenge you will traverse a string and determine if there is an equal amount of certain characters.


def ExOh(str)
  str = str.split("")
  a = str.count("x")
  b = str.count("o")
    if a == b
      return true
    end
  false
end