# frozen_string_literal: true

# class for finding peak in array recursively

# we will try to find peak using binary search
# search stops as soon as element is the only one left
# stops as soon as the element is the peak and returns it

class PeakFinding
  def find_peak(array, start, endpoint, c = 1)
    p c
    [start, endpoint]
    mid = (start + endpoint) / 2
    if array[mid - 1].to_i > array[mid]
      return find_peak(array, 0, mid - 1, c += 1)
    end

    if array[mid + 1].to_i > array[mid]
      return find_peak(array, mid + 1, array.size - 1, c += 1)
    end

    puts "peak #{array[mid]} found at index #{mid}"
  end
end

array = [1, 2, 3, 4, 5, 6, 300, 400, 500, 600, 700, 800, 900, 1000, 1100, 1200, 1300, 1400, 1500, 1600, 1700, 1800, 1900, 2000]

PeakFinding.new.find_peak(array, 0, array.size - 1)

# time complexity is log(n) meaning it takes way less steps than 0(n) even in worst cases
# e.g in an array of size == 23, it will take 5 literal steps to find peak in worst case whereby in 0(n) it will take array.size steps