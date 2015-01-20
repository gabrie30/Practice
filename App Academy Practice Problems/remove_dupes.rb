# remove dupes

class Array
  def find_uniques
    i = 0
    uniques = []
    while i < self.length
      unless uniques.include?(self[i])
        uniques << self[i]
      end
      i += 1
    end
    uniques
  end
end

p [2,2,3,4,5,5,6,7,8,4,3,5,4,5,7,8,9,7,6,5].find_uniques