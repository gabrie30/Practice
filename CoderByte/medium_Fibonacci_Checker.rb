# Have the function FibonacciChecker(num) return the string yes if the number given is part of the Fibonacci sequence. 
# This sequence is defined by: Fn = Fn-1 + Fn-2, which means to find Fn you add the previous two numbers up. 
# The first two numbers are 0 and 1, then comes 1, 2, 3, 5 etc. If num is not in the Fibonacci sequence, return the no. 

def FibonacciChecker(num)
    fib = [0,1]
    while fib[-1] <= num
      if fib.include?(num)
        return "yes"
      end
      fib << fib[-1] + fib[-2]
     end
"no"
end