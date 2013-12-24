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

  def test_should_insert_new_element_right
    @tree.insert 5
    @tree.insert 6

    assert {@tree.node.right.value == 6}
  end

  def test_should_insert_new_element_left
    @tree.insert 5
    @tree.insert 6
    @tree.insert 4

    assert {@tree.node.left.value == 4}
  end

  def test_should_insert_same_element_on_left_leaf
    @tree.insert 5
    @tree.insert 5

    assert {@tree.node.value == 5}
    assert {@tree.node.left.value == 5}
  end

  def test_should_rigth_choose_leaf_on_difficult_insert
    @tree.insert 5
    @tree.insert 3
    @tree.insert 7
    @tree.insert 6

    assert {@tree.node.right.left.value == 6}

    @tree.insert 4

    assert {@tree.node.left.right.value == 4}

    @tree.insert 2

    assert {@tree.node.left.left.value == 2}
  end

  def test_should_simply_search_elem
    @tree.insert 5
    @tree.insert 3
    @tree.insert 7
    @tree.insert 6
    @tree.insert 4

    result = @tree.search(3)
    assert {result == 3}

    result = @tree.search(6)
    assert {result == 6}
  end

end
