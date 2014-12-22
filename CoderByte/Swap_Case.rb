def SwapCase(str)
  str = str.split("")
  answer = ""
  str.each do |l|
    answer << l.swapcase
    end
  answer
end