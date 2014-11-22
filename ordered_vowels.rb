# Write a method, `ordered_vowel_words(str)` that takes a string of
# lowercase words and returns a string with just the words containing
# all their vowels (excluding "y") in alphabetical order. Vowels may
# be repeated (`"afoot"` is an ordered vowel word).

# You will probably want a helper method, `ordered_vowel_word?(word)`
# which returns true/false if a word's vowels are ordered.


def ordered_vowel_words(str)
	answer = []
	words_array = str.split(" ") #this will split the initial string into an array of words
	i = 0
	while i < words_array.length
		ordered_vowel_word?(words_array[i]) <= 1 ? answer << words_array[i] : sort(words_array[i], answer)
		i += 1
	end
answer  #bandaid is to use .uniq method here
end

def sort(word, answer) #needs to test if the vowels are sorted
i = 0
vowels_arr = []
vowels = ["a", "e", "i", "o", "u"]
highest = 0

	while i < word.length
 		if vowels.include?(word[i])
 				vowels_arr << word[i] #word[i] is a single letter
 		end
		i += 1
	end

	j = 0
	checked_false = false
	while j < vowels_arr.length-1 #letters can be used with < or > this tests to make sure the vowels are in the correct order, if they a
		if vowels_arr[j] > vowels_arr[j+1]
			checked_false = true
		end
			j += 1
	end

	if checked_false == false
		answer << word
	end

end

def ordered_vowel_word?(word) #counts the number of vowels in each word
	i = 0
	count = 0
	while i < word.length
		if word[i] == "a" || word[i] == "e" || word[i] == "i" || word[i] == "o" || word[i] == "u"
			count += 1
		end
		i += 1
	end
	count
end

p ordered_vowel_words("Lets check to see which words in this string have vowels that are in alphabetical order. Like aeiou adiou aeiuo")
 
