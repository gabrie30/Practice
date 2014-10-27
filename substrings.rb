#Implement a method 
#substrings that takes a word as the first argument and then an array of valid 
#substrings (your dictionary) as the second argument. It should return a hash listing each substring 
#case insensitive that was found in the original string and how many times it was found.
 
 
 
def substrings(string, dictionary)
	current_word = string.downcase.split(" ")
	hash_count = Hash.new(0)
 
 
	dictionary.each do |search|
		current_word.each do |word|
		  if word.include?(search)
			  hash_count[word] += 1
		  end
		end
	end
 
p hash_count
 
end
 
 
 
dictionary = %w[welcome the book and games ]
 
substrings("Welcome to the jungle, we got fun and games.", dictionary)