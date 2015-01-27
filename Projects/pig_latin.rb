# pig latin translator #


def translate_vowel_word(word)
  word = word + "way"
end

def translate_consonant_word(word)
  pig_word = ""
  vowels = %w[a e i o u]
  first_chunk = ""
  i = 0
  until vowels.include?(word[i])
    first_chunk << word[i]
    i += 1
  end

  remaining_letters = word[i..-1]
  pig_letters = "ay"
  pig_word = remaining_letters + first_chunk + pig_letters
end

def translator(str)
  word = str.split(" ")
  answer = []
  vowels = %w[a e i o u]

  word.each.with_index do |word, i|
    if vowels.include?(word[0])
      answer << translate_vowel_word(word)
    else
      answer << translate_consonant_word(word)
    end
  end
answer.join(" ")
end

p translator("pig banana trash happy glove egg inbox eight")

