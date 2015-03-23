class Node
  attr_accessor :right, :left, :value

  def initialize(value, left, right)
    @right = right
    @left = left
    @value = value
  end
end

class MyTree
  attr_accessor :root

  def initialize(value)
    @root = Node.new(value, nil, nil)
  end

  def inOrderTraversal(node = @root)
    return if (node == nil)
    inOrderTraversal(node.left)
    puts node.value.to_s
    inOrderTraversal(node.right)
  end

  def add(data)
    current_node = @root

    while nil != current_node

      if data < current_node.value && current_node.left == nil
        current_node.left = Node.new(data, nil, nil)
      elsif data < current_node.value && current_node.left != nil
        current_node = current_node.left
      elsif data > current_node.value && current_node.right == nil
        current_node.right = Node.new(data, nil, nil)
      elsif data > current_node.value && current_node.right != nil
        current_node = current_node.right
      else
        return
      end
    end 
  end
end

mytree = MyTree.new(5)

mytree.add(4)
mytree.add(6)
mytree.add(2)
mytree.add(3)
mytree.add(1)

mytree.inOrderTraversal

