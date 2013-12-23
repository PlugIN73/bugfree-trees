require 'minitest/autorun'
require 'wrong'
require './tree'

class TestTree < Minitest::Test
  def setup
    @tree = Tree.new
  end

  def should_insert_new_node
    raise 123
    tree.insert 5
    assert {tree.root.right.value == 5}
  end

end
