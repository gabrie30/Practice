
# Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.
#
# Difficulty: medium.

def most_common_letter(string)
  most_common_letter = ""
  letter = string.split("")
  largest = 0

  i = 0
  while i < letter.length
    j = i
    most_common_letter_count = 0
    
    while j < letter.length
      if letter[i] == letter[j]
        most_common_letter_count += 1
      end
      j += 1
    end

    if most_common_letter_count > largest
      largest = most_common_letter_count
      most_common_letter = letter[i]
    end
    i += 1
  end
  [most_common_letter, largest]
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