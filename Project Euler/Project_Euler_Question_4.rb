# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

def largest_palindrome
  largest = 0
  a = 999

  while a >= 100
    b = a
      while b >= 100
        
        if a*b < largest
          break
        end

        if (a*b).to_s == (a*b).to_s.reverse && a*b > largest
          largest = a*b
        end
        b -= 1
      end
    a -= 1
  end
largest
end

p largest_palindrome
