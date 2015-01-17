# Write a method that takes in a string and returns the number of
# letters that appear more than once in the string. You may assume
# the string contains only lowercase letters. Count the number of
# letters that repeat, not the number of times they repeat in the
# string.
#
# Difficulty: hard.

def num_repeats(string)
  string = string.gsub(" ", "") 
  # Get rid of spaces. Also if this contained numbers, symbols, etc would need to delete those too or they will be counted
  letters = string.split("")
  holder = []

  i = 0
  count = 0
  while i < letters.length
    j = i+1
      while j < letters.length
        if letters[i] == letters[j] && !holder.include?(letters[i])
          count += 1
          holder << letters[i]
        end
        j += 1
      end
      i += 1
    end
count
end


puts('num_repeats("abdbc") == 1: ' + (num_repeats('abdbc') == 1).to_s)
# one character is repeated
puts('num_repeats("aaa") == 1: ' + (num_repeats('aaa') == 1).to_s)
puts('num_repeats("abab") == 2: ' + (num_repeats('abab') == 2).to_s)
puts('num_repeats("cadac") == 2: ' + (num_repeats('cadac') == 2).to_s)
puts('num_repeats("abcde") == 0: ' + (num_repeats('abcde') == 0).to_s)