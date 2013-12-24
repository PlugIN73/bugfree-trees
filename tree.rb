class Node
  attr_accessor :right, :left, :value

  def initialize(value = nil, left = nil, right = nil)
    @value = value
    @right = right
    @left = left
  end
end

class Tree
  attr_reader :node
  def initialize
    @node ||= Node.new
  end

  def insert(value)
    node = @node
    while node.value
      if node.value < value
        node.right = Node.new if !node.right
        node = node.right
      else
        node.left = Node.new if !node.left
        node = node.left
      end
    end
    node.value = value
  end
end
