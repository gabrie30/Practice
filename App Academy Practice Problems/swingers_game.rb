# Implement a Swingers game. The method swingers should take an array of couple arrays and return the same type of data structure, with the couples mixed up. Assume that the first item in the couple array is a man, and the second item is a woman. Don't pair a person with someone of their own gender (sorry to ruin your fun). An example run of the program:
# Bonus problem: make a version of the swingers game that guarantees that all the couples end up with a different partner!

def check_pairs(mixed, swingers)
  swingers.each do |man,women|
    if mixed.include?([man,women])
      return true
    end
  end
false
end

def swingers(swingers)
  mixed = Array.new(swingers.length) {Array.new(2)}
  men = []
  women = []

  swingers.each do |man, woman|
    men << man
    women << woman
  end

  women.shuffle!

  i = 0
  while i < mixed.length
    mixed[i][0] = men[i]
    mixed[i][1] = women[i]
    i += 1

    if check_pairs(mixed,swingers)
      i = 0
      mixed = Array.new(swingers.length) {Array.new(2)}
      women.shuffle!
    end

  end
mixed
end


p swingers([
  ["Clyde", "Bonnie"],
  ["Paris", "Helen"],
  ["Romeo", "Juliet"]
])

## Better ##
# def swingers(pairs)
#   while true
#     new_pairs = pairs.map(&:first).zip(pairs.map(&:last).shuffle)
#     return new_pairs unless new_pairs.any? { |pair| pairs.include? pair }
#   end
# end
##