# Using the Ruby language, have the function TripleDouble(num1,num2) 
# take both parameters being passed, and return 1 if there is a straight 
# triple of a number at any place in num1 and also a straight double of 
# the same number in num2. For example: if num1 equals 451999277 and 
# num2 equals 41177722899, then return 1 because in the first parameter 
# you have the straight triple 999 and you have a straight double, 99,
#  of the same number in the second parameter. If this isn't the case, return 0. 

def find_triple(num)
  num = num.to_s.split("")
  i = 0
  while i < num.length
    if num[i] == num[i+1] && num[i] == num[i+2]
      return num[i].to_i
    end
    i += 1
  end
  false
end

def find_double(target,num2)
  target = target.to_s
  num2 = num2.to_s.split("")
  i = 0
  while i < num2.length
    if num2[i] == target && num2[i+1] == target
      return true 
    end
    i += 1
  end
  false
end


def TripleDouble(num1,num2)
  if find_triple(num1)
    triple = find_triple(num1)
      if find_double(triple,num2)
        return 1
      end
  end
0 
end

p TripleDouble(556668,556886)