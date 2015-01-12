def thousand_primes
  primes = []
  i = 2

  until primes.length == 1000
    if check_prime(i)
      primes << i
    end
    i += 1
  end
primes.inject(:+)
end

def check_prime(number)
  i = 2

  while i < number
    if number % i == 0
      return false
    end
    i += 1
  end
true
end

p thousand_primes
