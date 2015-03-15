class Node

  attr_accessor :value, :next_node, :previous_node

  def initialize(value, next_node, previous_node)
    @value = value
    @next_node = next_node
    @previous_node = previous_node
  end
end

class LinkedList

  attr_reader :head, :tail

  def shift #pops first node from list
    node_to_return = @head
    @head = @head.next_node
    @head.previous_node = nil
    node_to_return
  end

  def prepend(value) 
    if !@head
      @tail = @head = Node.new(value, nil, nil)
    else
      previous_head = @head
      new_node = Node.new(value, @head, nil)
      @head = new_node
      previous_head.previous_node = @head
    end
    self
  end

  def append(value) 
    if !@head
      @head = @tail = Node.new(value, nil, nil)
    else
      new_node = Node.new(value, nil, @tail)
      @tail.next_node = new_node
      @tail = new_node
    end
  end

  def to_s
    cursor = @head
    b_cursor = @tail
    while cursor != nil
      print "#{cursor.value} <--> "
      cursor = cursor.next_node # iterates through the nodes
    end
    print "\n"
  end

  def delete(value) # Feature to add, error handling for if value doesn't exist in the list
    if value == @head.value
       @head = @head.next_node
    elsif value == @tail.value
      @tail = @tail.previous_node
      @tail.next_node = nil
    elsif @head.next_node == nil
      return "Can't delete or list will be empty"
    else
      cursor = @head
      while cursor.value != value
        before_delete = cursor
        cursor = cursor.next_node
        after_delete = cursor.next_node
      end
      before_delete.next_node = after_delete
      after_delete.previous_node = before_delete
    end
  end



  def insert(value, insert_after) 
    node_to_insert = Node.new(value, nil, nil)

    if insert_after == @tail.value # if user tries to insert after the tail, it is just appending
      append(value)
    elsif insert_after == @head.value # if inserting after the head
      cursor = @head
      one_past = cursor.next_node
      node_to_insert.next_node = cursor.next_node 
      node_to_insert.previous_node = cursor
      one_past.previous_node = node_to_insert # cursor == cursor.next_node, so this is really cursor.next_node.next_node
      cursor.next_node = node_to_insert 
    else
      cursor = @head
      while cursor.value != insert_after # this will find the node we will insert our new node after
        cursor = cursor.next_node
        one_past = cursor.next_node
      end
      node_to_insert.next_node = cursor.next_node # First we assign both of the pointers for the new node
      insert_after == @head ? (node_to_insert.previous_node = @head) : (node_to_insert.previous_node = cursor)
      one_past.previous_node = node_to_insert # cursor == cursor.next_node, so this is really cursor.next_node.next_node
      cursor.next_node = node_to_insert 
    end
  end
end


my_list = LinkedList.new
my_list.append("Apple")
my_list.append("Banana")
my_list.append("Carrot")
my_list.append("Dirt")
my_list.insert("ZOO","Apple")
my_list.prepend("Cowboy")
my_list.delete("ZOO")
my_list.shift
my_list.append("Zeus")
my_list.shift


my_list.to_s

# p my_list
# p my_list.tail.previous_node.value
# p "The head: #{my_list.head.value}"
# p "The tail: #{my_list.tail.value}"





