 
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