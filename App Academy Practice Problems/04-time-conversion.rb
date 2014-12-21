# Write a method that will take in a number of minutes, and returns a
# string that formats the number into `hours:minutes`.
#
# Difficulty: easy.

##
# def time_conversion(minutes)
#   hours = (minutes / 60).floor
#   minutes = minutes % 60
#   if minutes < 10
#     answer = "#{hours}:0#{minutes}"
#   else
#     answer = "#{hours}:#{minutes}"
#   end
# end
##

##
# def time_conversion(minutes)
#   hours = (minutes / 60).floor
#   minutes = ((minutes/60.to_f) - (minutes / 60).floor) * 60
#   if minutes < 10
#     answer = "#{hours}:0#{minutes.to_i}"
#   else
#     answer = "#{hours}:#{minutes.to_i}"
#   end
# end
##


# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('time_conversion(15) == "0:15": ' + (time_conversion(15) == '0:15').to_s)
puts('time_conversion(150) == "2:30": ' + (time_conversion(150) == '2:30').to_s)
puts('time_conversion(360) == "6:00": ' + (time_conversion(360) == '6:00').to_s)