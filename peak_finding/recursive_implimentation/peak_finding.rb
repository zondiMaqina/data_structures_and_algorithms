# frozen_string_literal: true

# class for finding peak in array recursively

# we will try to find peak using binary search
# search stops as soon as element is the only one left
# stops as soon as the element is the peak and returns it

class PeakFinding
  def find_peak(array)
    p array
    mid = array.size / 2
    if array.size <= 1
      return array[mid]
    else
      return array[mid] if array[mid] >= array[mid + 1].to_i && array[mid] >= array[mid - 1].to_i
  
      left = find_peak(array[0...mid]) # look on left
      right = find_peak(array[mid..array.size - 1]) # look on right

      return left if left >= right
      return right if right >= left
    end
    'Peak not found'
  end
end

puts PeakFinding.new.find_peak([1, 5, 3, 4])