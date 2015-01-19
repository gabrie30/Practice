def sort_me(array)

  holder = []
  sorted = []

  until array.length == 0
    smallest = array.pop
    array.each do |number|
      if number < smallest
        holder << smallest
        smallest = number
      else
        holder << number
      end
    end
    sorted << smallest
    array = holder
    holder = []
  end
  sorted
end

p sort_me(%w[a s r f r4iw zeeebra])