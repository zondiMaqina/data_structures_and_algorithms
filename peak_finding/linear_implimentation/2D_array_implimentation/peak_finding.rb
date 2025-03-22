# frozen_string_literal: true

# class for finding peak in 2D array
class MatrixPeakFinding
  attr_reader :peak, :index

  def initialize
    @peak = nil
    @index = []
  end

  def find_peak(matrix)
    mid_peak = find_mid_peak(matrix[(matrix.size) / 2])
    row = matrix.size / 2
    col = matrix[row].index(mid_peak) # O(n)
    loop do
      if smaller_than_lower_int(matrix, row, col)
        row += 1
        next
      elsif smaller_than_upper_int(matrix, row, col)
        row -= 1
        next
      end
      puts "peak #{matrix[row][col]} found at index [#{row}][#{col}]"
      break
    end
  end

  # controls nil value since nil comparison is error
  def smaller_than_lower_int(matrix, row, col)
    return false if matrix[row + 1].nil?

    matrix[row][col] < matrix[row + 1][col]
  end

  def smaller_than_upper_int(matrix, row, col)
    return false if matrix[row - 1].nil?

    matrix[row][col] < matrix[row - 1][col]
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

# The algorithm for finding peak in middle array takes 0(logn), where n => array.size where the peak is located in worst case

# The algorithm for finding absolute peak sort of takes 0(n / 2) where n is the size of array and peak is at the last array of matrix in worst case