# Using the Ruby language, have the function MultipleBrackets(str) 
# take the str parameter being passed and return 1 #ofBrackets 
# if the brackets are correctly matched and each one is accounted 
#   for. Otherwise return 0. For example: if str is "(hello [world])(!)",
#    then the output should be 1 3 because all the brackets are matched 
#    and there are 3 pairs of brackets, but if str is "((hello [world])" 
#     the the output should be 0 because the brackets do not correctly 
#       match up. Only "(", ")", "[", and "]" will be used as brackets. 
#       If str contains no brackets return 1. 


def MultipleBrackets(str)
  str = str.split("")
  answer = []
  if str.count("(") == str.count(")") && str.count("[") == str.count("]")
    answer << 1
    pairs = (str.count("(") + str.count("[")) / 2
    answer << pairs
  end
  answer.join(" ")
end