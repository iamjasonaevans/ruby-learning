require 'minitest/autorun'
require_relative '../../algorithms/array'

class AlgorithmsArrayTest < MiniTest::Test
  def test_binary_search
    a = [1,2,3,4,5,6,7,100,1001,2145]
    result = a.binary_search(100)
    assert_equal result, 7
  end
end
