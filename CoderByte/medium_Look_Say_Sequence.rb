# Using the Ruby language, have the function LookSaySequence(num) take the num parameter 
# being passed and return the next number in the sequence according to the following 
# rule: to generate the next number in a sequence read off the digits of the given number, 
# counting the number of digits in groups of the same digit. For example, the sequence 
# beginning with 1 would be: 1, 11, 21, 1211, ... The 11 comes from there being "one 1" 
# before it and the 21 comes from there being "two 1's" before it. So your program should 
# return the next number in the sequence given num. 

def LookSaySequence(num)
  num = num.to_s.split("")
  answer = []
  i = 0
  while i < num.length
    count = 0
    j = i
      while num[j] == num[i]
      count += 1
      j += 1
      end
      answer << count << num[i].to_i
    i += count
  end
answer.join.to_i
end

p LookSaySequence(1211)  #=> Input = 1211  Output = 111221