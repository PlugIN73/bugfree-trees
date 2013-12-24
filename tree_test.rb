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

end
