# frozen_string_literal: true

# class for finding peak in 2D array
class MatrixPeakFinding
  attr_reader :peak, :index

  def initialize
    @peak = nil
    @index = []
  end

  # finds peak in middle array of matrix
  def find_mid_peak(mid_array)
    start = 0
    endpoint = mid_array.size
    while start < endpoint
      mid = (start + endpoint) / 2
      if mid_array[mid] < mid_array[mid + 1].to_i
        start = (mid + 1 + endpoint) / 2
        endpoint = mid_array.size
        next
      elsif mid_array[mid] < mid_array[mid - 1].to_i
        start = 0
        endpoint = mid - 1
        next
      end
      return mid_array[mid]
    end
  end
end
