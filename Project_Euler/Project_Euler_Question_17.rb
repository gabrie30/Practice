# If the numbers 1 to 5 are written out in words: one, two, three, four, five, 
# then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

# If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, 
# how many letters would be used?

# Needs refactoring

def deconstruct(number)
  answer = ""
  hundreds = number / 100
  tens = number % 100 / 10
  ones = number % 10 / 1

  if hundreds == 0 && tens == 0 # for one to ten
    if ones == 0
      return "zero"
    end
    answer << write_ones(ones)
    return answer
  end

  if hundreds == 0 && tens == 1 && ones >= 1 # teens
    answer << write_tens(tens, ones)
    return answer
  end

  if hundreds == 0 && ones == 0 # for tens up to 100
    answer << write_tens(tens)
    return answer
  end

  if hundreds == 0 # remaining 0 - 100
    answer << write_tens(tens) + "-"
    answer << write_ones(ones)
    return answer
  end


  answer << write_hundreds(hundreds)

  if tens == 0 && ones == 0 # multiples of 100
    return answer
  end

  answer << " and "

  if tens == 1
    answer << write_tens(tens,ones)
    return answer
  end

  answer << write_tens(tens)

  if hundreds >= 1 && tens > 0 && ones > 0
    answer << "-"
  end

  answer << write_ones(ones)

answer
end

def write_hundreds(hundreds)
  if hundreds > 9
    return "one thousand"
  end
  hundreds_arr = ["", "one hundred", "two hundred", "three hundred", "four hundred", "five hundred", "six hundred", "seven hundred", "eight hundred", "nine hundred"]
  hundreds_arr[hundreds]
end

def write_tens(tens, ones = 0)
  tens_arr = ["",["ten","eleven","twelve","thirteen","fourteen","fifteen","sixteen","seventeen","eighteen","nineteen"], "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
  if tens == 1
    return tens_arr[1][ones]
  end
  tens_arr[tens]
end

def write_ones(ones)
  ones_arr = ["","one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
  ones_arr[ones]
end

final_answer = ""
1.upto(1000) do |x|
  final_answer << deconstruct(x)
end
final_answer = final_answer.gsub("-","")
final_answer = final_answer.gsub(" ","")
p final_answer.length