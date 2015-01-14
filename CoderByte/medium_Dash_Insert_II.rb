# Have the function DashInsertII(str) insert dashes ('-') between each two odd numbers and insert asterisks ('*') 
# between each two even numbers in str. For example: if str is 4546793 the output should be 454*67-9-3. Don't count zero as an odd or even number. 

def DashInsertII(num)
  nums = num.to_s.split("")
  i = 0
  answer = []
  while i < nums.length
    
    if i > 0 && nums[i].to_i % 2 == 0 && nums[i-1].to_i % 2 == 0 && nums[i].to_i != 0 && nums[i-1].to_i != 0 #zero is not odd
      answer << "*"
    elsif i > 0 && nums[i].to_i % 2 == 1 && nums[i-1].to_i % 2 == 1
      answer << "-"
    end
    
    answer << nums[i]
    i += 1
   end
  answer.join("")
end


# def DashInsertII(num)

#   return num.to_s if num < 10
#   results = ''
#   digits = num.to_s.split('')
#   0.upto(digits.length - 2) do |i|
#     if digits[i] == '0' || digits[i+1] == '0'
#       results += digits[i]
#     elsif digits[i].to_i % 2 == 0 && digits[i+1].to_i % 2 == 0
#       results += digits[i] + '*'
#     elsif digits[i].to_i % 2 == 1 && digits[i+1].to_i % 2 == 1
#       results += digits[i] + '-'
#     else
#       results += digits[i]
#     end
#   end
#   results += digits.last  
# end