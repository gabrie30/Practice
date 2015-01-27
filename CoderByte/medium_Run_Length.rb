def check_word(target,word)
  word = word.split("")
  count = 0
  i = 0
  while i < word.length
    if target.include?(word[i])
      count += 1
    end
    i += 1
  end

  if count == target.length-1
    return true
  end
  false
end  

def one_off_words(str, word_list)
  target = str.split("")
  answer = []

  i = 0
  while i < word_list.length
    if check_word(target, word_list[i])
      answer << word_list[i]
    end
    i += 1
  end
answer
end

p one_off_words("hello", ["hellw", "ollea", "hola"])
WORDS = ["door", "moot", "boot", "boots"]
p one_off_words("moor", WORDS)