# frozen_string_literal: true

# class for srting array
class BubbleSort
  def bubble_sort(array)
    return puts 'array is empty' if array.empty?

    amount = array.size - 2
    amount.times do
      sort_array(array)
    end
    array
  end

  def sort_array(array)
    start = 0
    endpoint = array.size - 2
    while start <= endpoint
      current_int = array[start]
      if current_int > array[start + 1]
        array[start] = array[start + 1]
        array[start + 1] = current_int
      end
      start += 1
    end
  end
end

# This algorithm takes O(n * 2) where n => array.size - 2
# it will shuffle entire array which takes O(n), doing this n times
