# Have the function NumberSearch(str) take the str parameter, search for all the numbers in the string, add them together, then return that final number divided by the total amount of letters in the string. For example: if str is "Hello6 9World 2, Nic8e D7ay!" the output should be 2. First if you add up all the numbers, 6 + 9 + 2 + 8 + 7 you get 32. Then there are 17 letters in the string. 32 / 17 = 1.882, and the final answer should be rounded to the nearest whole number, so the answer is 2. Only single digit numbers separated by spaces will be used throughout the whole string (So this won't ever be the case: hello44444 world). Each string will also have at least one letter. 

##
# def NumberSearch(str)
#   numbers = str.scan(/\d/).map{|n| n.to_i}.inject(:+)
#   letters = str.scan(/[A-Z]|[a-z]/).length
#
#   (numbers.to_f/letters.to_f).round
# end
##

def NumberSearch(str)
  numbers = []
  letter = [*"a".."z"]
  numbers_key = [*"0".."9"]
  str = str.split("")
  letter_count = 0
  
  i = 0
  while i < str.length
    if letter.include?(str[i].downcase)
      letter_count += 1
    elsif numbers_key.include?(str[i])
      numbers << str[i].to_i
    end
    i += 1
  end
  
total = numbers.inject(:+)
(total / letter_count.to_f).round
end


p NumberSearch("i love cake 9 8 7")