def FormattedDivision(num1,num2)
  divided = sprintf("%0.4f", num1.to_f / num2.to_f)
  divided = divided.split("").reverse
  answer = ""
  nums_in = 0
  past_decimal = false

  i = 0
  while i < divided.length

    if nums_in == 3
      answer << ","
      nums_in = 0
    end

    if divided[i] == "."
      past_decimal = true
      nums_in -= 1
    end

    if past_decimal == true
      answer << divided[i]
      nums_in += 1
    else
      answer << divided[i]
    end

  i += 1
  end
 answer.reverse
end

p FormattedDivision(503394930,43)