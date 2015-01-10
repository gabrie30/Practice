# Write a method, `ordered_vowel_words(str)` that takes a string of
# lowercase words and returns a string with just the words containing
# all their vowels (excluding "y") in alphabetical order. Vowels may
# be repeated (`"afoot"` is an ordered vowel word).
#
# You will probably want a helper method, `ordered_vowel_word?(word)`
# which returns true/false if a word's vowels are ordered.
#
# Difficulty: 2/5


def ordered_vowel_words(str)
  str = str.split
  answer = []
  str.each do |word|
    if ordered_vowel_word?(word)
      answer << word
    end
  end
answer.join(" ")
end

def ordered_vowel_word?(word)
  letters = word.split("")
  vowels = %w[a e i o u]
  i = 0
  vowels_in_word = []
  while i < letters.length
    if vowels.include?(letters[i])
      vowels_in_word << letters[i]
    end
    i += 1
  end

  if vowels_in_word == vowels_in_word.sort
    return true
  end
false
end

p ordered_vowel_words("this is a test of the vowel ordering system")