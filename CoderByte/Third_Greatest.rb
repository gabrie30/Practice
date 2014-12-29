
def ThirdGreatest(strArr)
  i = 0
  first = ""
  second = ""
  third = ""
  while i < strArr.length
    if strArr[i].length > first.length
      third = second
      second = first
      first = strArr[i]
    elsif strArr[i].length > second.length
      third = second
      second = strArr[i]
    elsif strArr[i].length > third.length
      third = strArr[i]
    end
    i += 1
  end
third
end


def ThirdGreatest(strArr)
  lengths = strArr.map do |word|
    word.length
  end

  lengths = lengths.uniq.sort.reverse
  
  sorted_words = []
  lengths.each do |length|
    words = strArr.select { |word| word.length == length }
    sorted_words << words
  end

  sorted_words.flatten[2]
end