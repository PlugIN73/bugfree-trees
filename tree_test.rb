require 'minitest/autorun'
require 'wrong'
require './tree'

class TestTree < Minitest::Test
  include Wrong

  def setup
    @tree = Tree.new
  end

  def test_should_create_first_element
    @tree.insert 5

    assert {@tree.node.value == 5}
  end

  def test_should_insert_new_element
    @tree.insert 5
    @tree.insert 6

    assert {@tree.node.right.value == 6}
  end

end
