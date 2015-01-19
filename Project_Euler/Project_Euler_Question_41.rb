# We shall say that an n-digit number is pandigital if it makes use of all the digits 
# 1 to n exactly once. For example, 2143 is a 4-digit pandigital and is also prime.

# What is the largest n-digit pandigital prime that exists?

# [Finished in 269.4s]

def pandigital(i)
  while i >= 0
      digits = i.to_s.length
      checking = [*"1"..digits.to_s]
      sorted_i = i.to_s.split("").sort
    if checking == sorted_i && prime?(i)
      return i
    end
    i -= 2
  end
end

def prime?(num)
  i = 2
  highest = Math.sqrt(num)
  while i <= highest
    if num % i == 0
      return false
    end
    i += 1
  end
  true
end

p pandigital(50000001) # make sure this is an odd number