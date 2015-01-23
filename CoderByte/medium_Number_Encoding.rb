# Using the Ruby language, have the function NumberEncoding(str) 
# take the str parameter and encode the message according to the 
# following rule: encode every letter into its corresponding numbered 
# position in the alphabet. Symbols and spaces will also be used in 
# the input. For example: if str is "af5c a#!" then your program 
# should return 1653 1#!. 

def NumberEncoding(str) 
  key = %w[a b c d e f g h i j k l m n o p q r s t u v w x y z]
  str = str.split("")
  answer = []
  i = 0
  while i < str.length
    char = str[i].to_s.downcase
    if key.include?(char)
      answer << key.index(char)+1
    else
      answer << char
    end
    i += 1
  end
  answer.join
end

p NumberEncoding("Hello world-2")