# Quickfind: 
class List
  attr_reader :list

  def initialize()
    @list = Array.new
  end

  def add(element)
    @list << Node.new(element).data
  end

  def join(join_to, joining)
    @list.each.with_index do |element, index|
      if element == joining
        @list[index] = join_to
      end
    end
    @list
  end

  def union?(testing, test)
    @list[testing] == @list[test] ? true : false
  end
end

class Node
  attr_reader :data

  def initialize(data)
    @data = data
  end
end

my_list = List.new
my_list.add(0)
my_list.add(1)
my_list.add(2)
my_list.add(3)
my_list.add(4)
my_list.add(5)

my_list.join(0, 2)
my_list.join(0, 5)
my_list.join(1, 3)
my_list.join(1, 4)

p my_list.union?(0, 2)
p my_list.union?(0, 5)
p my_list.union?(1, 3)
p my_list.list