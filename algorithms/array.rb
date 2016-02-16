class Array
  # Binary Search
  #
  # Performs a binary search on an array
  # requires the array to be sorted
  #
  # T(n) = O(log n)
  #
  # note: Ruby 2.1 has a built in binary search array#bsearch
  #
  # value, the value to search for
  # returns: int representing the index if the value
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
end
