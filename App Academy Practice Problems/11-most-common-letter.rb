# Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.
#
# Difficulty: medium.

# Concept: This problem is solved using a nested while loop. Which will have faster and 
# slower moving loops. The first while loop will be the slower of the two. Also setting variables
# outside or inside the loop controls how they hold their value, or reset. Setting a variable
# outside of the while loops will keep the value even after both loops iterate. Setting a variable
# inside the slower loop will cause the value to reset with each iteration of the slower loop, but hold its value while the faster loop iterates.
# Setting a variable inside the faster loop will cause the value to reset after each iteration.

def most_common_letter(string)
  letters = string.split("")
  i = 0
  most_common_count = 0
  most_common_letter = ""

  while i < letters.length
    j = i
    count = 0
      while j < letters.length
        if letters[j] == letters[i]
          count += 1
        end
        j += 1
      end
    if count > most_common_count
      most_common_letter = letters[i]
      most_common_count = count
    end
    i += 1
  end
[most_common_letter, most_common_count]
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'most_common_letter("abca") == ["a", 2]: ' +
  (most_common_letter('abca') == ['a', 2]).to_s
)
puts(
  'most_common_letter("abbab") == ["b", 3]: ' +
  (most_common_letter('abbab') == ['b', 3]).to_s
)