#For this challenge you will be counting all the vowels in a string.

def VowelCount(str)
  vowels = %w(a e i o u)
  count = 0
  str = str.split("")
  str.each do |letter|
    if vowels.include?(letter)
      count += 1
    end
  end
  count         
end