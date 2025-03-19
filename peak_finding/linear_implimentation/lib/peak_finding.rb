# frozen_string_literal: true

# class for finding peak in array
class PeakFinding
  def initialize
    @value, @index = nil
    @status = false
  end

  def find_peak(array)
    array.each_with_index do |int, i|
      @value = int
      @index = i
      @status = true if int >= array[i - 1].to_i && int >= array[i + 1].to_i
      break if @status # breaks if peak is found (SCE)
    end
    conclusion
  end

  def conclusion
    return puts "#{@value} is a peak at index #{@index}" if @status

    puts 'No peak found'
  end
end
PeakFinding.new.find_peak([1, 2, 12, 5])
# frtunately nil can be converted to 0 by #to_i method
# SCE -> Short Circuit Evaluation
