# Write a method that takes in a string. Return the longest word in
# the string. You may assume that the string contains only letters and
# spaces.
#
# You may use the String `split` method to aid you in your quest.
#
# Difficulty: easy.

##
# def longest(string)
#   arr = string.split()
#   longest = ""
#
#   i = 0
#   while i < arr.length
#     if arr[i].length > longest.length
#       longest = arr[i]
#     end
#     i += 1
#   end
#   longest
# end
#
# p longest("hello there darling")
##

##
# def longest(string)
#   longest = ""
#   arr = string.split
#   arr.each do |word|
#     if word.length > longest.length
#       longest = word
#     end
#   end
#   longest
# end
#
# p longest("hello there darling")
##

def longest(string)
p string
end

p longest("hello mississippi darling")


