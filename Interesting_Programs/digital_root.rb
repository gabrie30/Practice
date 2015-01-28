# Write a method, digital_root(num). It should sum the digits of a positive integer. 
# If it is greater than 10, sum the digits of the resulting number. 
# Keep repeating until there is only one digit in the result, called the "digital root".
# Do not use string conversion within your method.

def digital_root(num)
  until num < 10
    num = num.to_s.split("")
    formatted = []
    num.each do |n|
      formatted << n.to_i
    end

    num = formatted.inject(:+)
  end
  num
end

# def digital_root(num)
#   while num > 10
#     num = digital_root_step(num)
#   end

#   num
# end

# def digital_root_step(num)
#   root = 0
#   while num > 0
#     root += (num % 10)

#     num /= 10
#   end

#   root
# end

p digital_root(65465)