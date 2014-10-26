
def caesar_cipher(str, shift)
  ciphered = ""
  characters = ("a".."z").to_a
  i = 0
  while i < str.length

  	if characters.include?(str[i]) #lowercase letter
  		new_character_index = (characters.index(str[i]) + shift) % 26
  		new_character = characters[new_character_index]
  		ciphered += new_character
  	elsif characters.include?(str[i].downcase) #uppercase
  		new_character_index = (characters.index(str[i].downcase) + shift) % 26
  		new_character = characters[new_character_index].upcase
  		ciphered += new_character
  	else #space or other characters
  		ciphered += str[i]
  	end

  	i+=1
  end
  ciphered
end
p caesar_cipher("Life is like a box of chocolates", 12)


