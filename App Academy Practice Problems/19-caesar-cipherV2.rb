
def caesar_cipher(offset, string)
  l = [*"a".."z"]
  n = [*1..26]
  key = Hash[l.zip(n)]
  answer = ""
  

  string = string.split("")
  i = 0
  while i < string.length
    if key.include?(string[i])
      hidden_letter_value = (key[string[i]] + offset) % 26
      answer << key.key(hidden_letter_value)
    else
      answer << string[i]
    end
    i +=1
  end
answer
end

#p caesar_cipher(1,"abc def")
puts(
  'caesar_cipher(3, "abc") == "def": ' +
  (caesar_cipher(3, 'abc') == 'def').to_s
)
puts(
  'caesar_cipher(3, "abc xyz") == "def abc": ' +
  (caesar_cipher(3, 'abc xyz') == 'def abc').to_s
)