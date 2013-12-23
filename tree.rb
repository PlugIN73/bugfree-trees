class Node
  attr_reader :right, :left, :value
  def initialize(value = nil, left = nil, right = nil)
    @value = value
    @right = right
    @left = left
  end
end

class Tree
  attr_accessible :root
  def initialize
    @root ||= Node.new
  end

  def insert(value)
    
  end
end
