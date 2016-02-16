class Array
  # Binary Search
  #
  # Performs a binary search on an array
  # requires the array to be sorted
  #
  # T(n) = O(log n)
  #
  # Note: Ruby 2.1 has a built in binary search array#bsearch
  #
  # params:
  #   value: (required) the value to search for
  #   min: the lhs index of the array
  #   max: the rhs index of the array
  # returns:
  #   int representing the index if the value
  #
  def binary_search(value, min = 0, max = (length - 1))
    return nil if (max < min)
    mid = (min + max) >> 1

    case self[mid] <=> value
    when 1
      binary_search(value, min, mid - 1)
    when -1
      binary_search(value, mid + 1, max)
    else
      mid
    end
  end

  # Quick Sort
  #
  # T(n) = O(n log n)
  def merge_sort
    return self if self.size <= 1

    mid = (self.length / 2).floor

    # divide the array
    lhs = self.slice(0, mid).merge_sort
    rhs = self.slice(mid, self.length).merge_sort

    merge(lhs, rhs)
  end

  def merge(left, right)
    result = []
    until left.empty? || right.empty?
      if left.first <= right.first
        result << left.shift
      else
        result << right.shift
      end
    end
    result + left + right
  end
end

