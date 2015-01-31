# Returns an array with the difference between consecutive prime numbers

def is_prime?(n)
  i = 2
  while i < n
    if n % i == 0
      return false
    end
    i += 1
  end
true
end

def prime_diffs(n)
  primes = []
  diff = []
  i = 2
  while i <= n
    if is_prime?(i)
      primes << i
      diff << primes[-1] - primes[-2] if primes.length >= 2
    end
    i += 1
  end
p primes
diff
end

p prime_diffs(10)

