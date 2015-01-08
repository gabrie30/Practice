# Have the function LetterCount(str) take the str parameter being passed and return the first word with the greatest number of repeated letters. For example: "Today, is the greatest day ever!" should return greatest because it has 2 e's (and 2 t's) and it comes before ever which also has 2 e's. If there are no words with repeating letters return -1.Words will be separated by spaces. 


def LetterCount(str)
  
  words = str.split
  largest = 0
  largest_word = ""
  
  words.map do |word|
    if letters(word) > largest
      largest = letters(word)
      largest_word = word
    end
   end
  largest == 0 ? -1 : largest_word
end


def letters(word)
  count = 0
  letters = word.split("")
  most_letters = 0
  i = 0
  while i < letters.length
    current_letter = letters[i]
    j = i + 1
      while j < letters.length
        if letters[j] == current_letter
          count += 1
        end
        
        if count > most_letters
          most_letters = count
        end
       j += 1
      end
    i += 1
  end
most_letters
end