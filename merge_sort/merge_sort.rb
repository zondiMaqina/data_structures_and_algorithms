# frozen_string_literal: true

# class for sorting array recursively
class MergeSort
  def merge_sort(array)
    return array if array.size <= 1

    mid = (array.size - 1) / 2
    left = merge_sort(array[0..mid])
    right = merge_sort(array[mid + 1...array.size])
    merge(left, right)
  end

  def merge(left, right)
    sorted_array = []
    while !left.empty? && !right.empty?
      if left[0] < right[0]
        sorted_array << left.shift
      else
        sorted_array << right.shift
      end
      # the othe half is already sorted
      sorted_array += right if left == []
      sorted_array += left if right == []
    end
    sorted_array
  end
end

p MergeSort.new.merge_sort([5, 400, 3])

# The time complexity taken by this algortihm is 0(n log n) in worst case and also the same in best case

# Theta(n * log n) even when array is sorted it will sort the integers and merge them

# 0(n * log n) will take less time than n**2
# 