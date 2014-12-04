# Using the Ruby language, have the function LetterCountI(str) take the str parameter being passed 
# and return the first word with the greatest number of repeated letters. For example: 
# "Today, is the greatest day ever!" should return greatest because it has 2 e's (and 2 t's) and it 
# comes before ever which also has 2 e's. If there are no words with repeating letters return -1. 
# Words will be separated by spaces.

def LetterCountI(str)
  largest_count = 0
  words = str.split(" ")
  i = 0
  while i < words.length
    if count(words[i]) > largest_count
      largest_count = count(words[i])
      largest_word = words[i]
    end
    i += 1
  end
  if largest_count == 0
    return -1
  else
    return largest_word
  end
end

def count(word)
  letters = word.split("")
  i=0
  count = 0 
  while i < letters.length
    current_letter = letters[i]
    j = i+1 
      while j < letters.length
        if letters[j] == current_letter
          count +=1
        end
         j += 1
        end
    i +=1
    end
  if count == 0
    return -1
  else
    return count
  end
end

p LetterCountI("Hello apple qwertyu pie")
p LetterCountI("no words her")