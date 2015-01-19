NAME_OF = {
    1 => 'one',
    2 => 'two',
    3 => 'three',
    4 => 'four',
    5 => 'five',
    6 => 'six',
    7 => 'seven',
    8 => 'eight',
    9 => 'nine',
    10 => 'ten',
    11 => 'eleven',
    12 => 'twelve',
    13 => 'thirteen',
    14 => 'fourteen',
    15 => 'fifteen',
    16 => 'sixteen',
    17 => 'seventeen',
    18 => 'eighteen',
    19 => 'nineteen',
    20 => 'twenty',
    30 => 'thirty',
    40 => 'forty',
    50 => 'fifty',
    60 => 'sixty',
    70 => 'seventy',
    80 => 'eighty',
    90 => 'ninety'
}

def number_name(n)
  result = ''
  if n >=  1000
    result << NAME_OF[n / 1000] << ' thousand '
  elsif n >= 100
    result << NAME_OF[n / 100] << ' hundred'
    if n % 100 > 0
      result << ' and '
      result << number_name(n % 100)
    end
  elsif n > 20
    result << NAME_OF[(n / 10) * 10]
    result << " " << (NAME_OF[n % 10] || '')
  else
    result << NAME_OF[n]
  end
  result
end

puts (1..1000).map {|n| puts (number_name n) }