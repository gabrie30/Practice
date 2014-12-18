# Write a method that will take a string as input, and return a new
# string with the same letters in reverse order.
#
# Difficulty: easy.

## Using the reverse method ##
# def reverse(string)
#   string.reverse
# end
##

# # Solving by iteration ##
# def reverse(string)
#   answer = []
#   string = string.split("")
#   i = string.length-1
#   while i >= 0
#     answer << string[i]
#     i -=1
#   end
# answer.join
# end
# #

## Solving with a block and reverse method ##
# def reverse(string, &bloc)
#   yield(string)
# end
#
# p reverse("abcdefg") { |string| string.reverse }
##


## Solving with a Proc and reverse method ##
# def reverse(string, change)
#   change.call(string)
# end
#
# change = Proc.new {|s| s.reverse}
#
# p reverse("abc", change)
##


## Solving iteratively and using Proc ##
# def reverse(string, change)
#   change.call(string).join
# end
#
# change = Proc.new do |string|
#   answer = []
#   string = string.split("")
#   i = string.length-1
#     while i >= 0
#     answer << string[i]
#     i -=1
#   end
#   answer
# end
# 
# p reverse("abc", change)
##


## Solving with lambda and reverse method ##
# def reverse(string, code)
#   code.call(string)
# end
#
# p reverse("abcd", lambda {|z| z.reverse})
##


## Turning a method into an object part II ##
# def reverse(string, m)
#   m.call(string)
# end
#
# def backwards(string)
#   string.reverse
# end
#
# p reverse("abc", method(:backwards))
##

## Solving iteratively using a negative index ##
# def reverse(string)
#   answer = ""
#   i = -1
#   while i >= string.length - (string.length * 2)
#     answer << string[i]
#     i -= 1
#   end
#   answer
# end
# p reverse("abcdefg")
##



# puts(
#   'reverse("abc") == "cba": ' + (reverse("abc") == "cba").to_s
# )
# puts(
#   'reverse("a") == "a": ' + (reverse("a") == "a").to_s
# )
# puts(
#   'reverse("") == "": ' + (reverse("") == "").to_s
# )