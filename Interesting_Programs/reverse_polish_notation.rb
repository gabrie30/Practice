# Reverse Polish Notation

def add(numbers)
  new_num_1 = numbers.pop
  new_num_2 = numbers.pop
  numbers << (new_num_1 + new_num_2)
end

def multiply(numbers)
  new_num_1 = numbers.pop
  new_num_2 = numbers.pop
  numbers << (new_num_1 * new_num_2)
end

def subtract(numbers)
  new_num_1 = numbers.pop
  new_num_2 = numbers.pop
  numbers << (new_num_2 - new_num_1)
end

def divide(numbers)
  new_num_1 = numbers.pop
  new_num_2 = numbers.pop
  numbers << (new_num_2 / new_num_1)
end

def convert(*note)
  numbers = []
  holder = note

  i = 0
  while i < note.length
    if note[i].is_a?(Integer)
      numbers << note[i]
    elsif note[i] == "+"
      add(numbers)
    elsif note[i] == "*"
      multiply(numbers)
    elsif note[i] == "-"
      subtract(numbers)
    elsif note[i] == "/"
      divide(numbers)
    end
  i += 1
  end
numbers
end

puts convert(3,5,"+",7,2,"-","*")