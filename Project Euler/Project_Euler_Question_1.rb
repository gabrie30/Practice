# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. 
# The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.


def find_sum(number)
  multiples = []
  i = 0
  while i < number
    if i % 3 == 0 || i % 5 == 0
      multiples << i
    end
    i += 1
  end
multiples.inject(:+)
end

p find_sum(1000)