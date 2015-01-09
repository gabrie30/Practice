# Have the function BinaryConverter(str) return the decimal form of the binary value. 
# For example: if 101 is passed return 5, or if 1000 is passed return 8. 


# def BinaryConverter(str)
#   str = str.reverse
#   str = str.split("")
#   total = []
#   i =0
#   value = [1]
#     while value.length < str.length
#       value << value[-1] * 2
#     end

#     while i < str.length
#       total << (value[i] * str[i].to_i)
#       i += 1
#     end
#   total.inject(:+) 
# end

def BinaryConverter(str)
  num = 0
  str.reverse.split("").each_with_index do |value,index|
    num += value.to_i * 2 ** index
  end
  return num
end


 p BinaryConverter("100101")