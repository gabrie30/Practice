# Using the Ruby language, have the function OffLineMinimum(strArr) take the strArr parameter being 
# passed which will be an array of integers ranging from 1...n and the letter "E" and return the
# correct subset based on the following rules. The input will be in the following 
# format: ["I","I","E","I",...,"E",...,"I"] where the I's stand for integers and the E means take out 
# the smallest integer currently in the whole set. When finished, your program should return that new
# set with integers separated by commas. For example: if strArr is ["5","4","6","E","1","7","E","E","3","2"] 
# then your program should return 4,1,5. 


# def OffLineMinimum(strArr)
#   answer = []
#   i = 0
#   while i < strArr.length
#     smallest = 100
#     if strArr[i] == "E"
#       j = 0
#         while j < i
#           if strArr[j].to_i < smallest && strArr[j] != "E" && !answer.include?(strArr[j].to_i)
#             smallest = strArr[j].to_i
#           end
#         j += 1
#         end
#       answer << smallest
#     end
#     i += 1
#   end
#   answer.join(",")
# end



# def OffLineMinimum(strArr)
#   result = []
#   arr = strArr.dup
#   arr.count("E").times do
#     result << min = arr.take_while { |x| x != 'E' }.min
#     arr.slice!(arr.index("E"))
#     arr.slice!(arr.index(min))
#   end
#   return result.join(',')
# end


# def OffLineMinimum(strArr)
#   new_set = []
#   subset = []
#   strArr.each_with_index do |num, idx|
#     subset << num
#     if num == "E"
#       new_set << subset.min
#       subset.delete(subset.min)
#     end
#   end
#   new_set.join(",")        
# end


# def OffLineMinimum(strArr)
#   output = []
#   subset = []
#   strArr.each do |digit|
#     if digit =~ /[0-9]/
#       subset << digit
#     elsif digit =~ /["E"]/
#       output << subset.min
#       subset.delete(subset.min)
#     end
#   end
#   return output.join(',')
# end


def OffLineMinimum(strArr)
  smalls = []
  nums = []
  strArr.each do |ele|
    if ele != 'E'
      nums << ele
    else
      smalls << nums.sort!.shift
    end
  end
  smalls.join(',') 
end

p OffLineMinimum(["4","E","1","E","2","E","3","E"])
