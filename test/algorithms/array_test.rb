require 'minitest/autorun'
require_relative '../../algorithms/array'

class AlgorithmsArrayTest < MiniTest::Test
  def test_binary_search
    a = [1,2,3,4,5,6,7,100,1001,2145]
    result = a.binary_search(100)
    assert_equal result, 7
  end

  def test_merge_sort
    a = [4,9,22,101,45,58,87,68]
    result = a.merge_sort()
    assert_equal result, [4,9,22,45,58,68,87,101]
  end

  def test_merge_sort2
    a = [4, 99, 5, 1000, 2993939]
    result = a.merge_sort()
    assert_equal result, [4,5,99,1000,2993939]
  end

end
