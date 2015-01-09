# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?


def big_prime(x)
  prime = x
  (2..Math.sqrt(x).to_i).each do |i|
    break if prime <= i
    prime /= i while (prime > i && prime % i == 0)
  end
  prime
end
 
puts big_prime(60354865143)
