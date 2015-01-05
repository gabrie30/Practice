# Have the function LetterCapitalize(str) take the str parameter being passed and capitalize the first letter of each word. Words will be separated by only one space. 

def LetterCapitalize(str)
    str = str.split(" ")
    answer = []
    str.each do |word|
      answer << word.capitalize
      end
  answer.join(" ")
end