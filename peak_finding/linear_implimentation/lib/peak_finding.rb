# frozen_string_literal: true

require_relative 'nil_handling'

# class for finding peak in array
class PeakFinding
  include NilHandling

  def initialize
    @value, @index = nil
    @status = false
  end

  def find_peak(array)
    array.each_with_index do |int, i|
      if has_both_neighbours?(array, i)
        @index = i
        @value = int
        @status = true if int >= array[i - 1] && int >= array[i + 1]
        p @status
      elsif left_nil?(array, i) == false
        @index = i
        @value = int
        @status = true if int >= array[i - 1]
      else
        @index = i
        @value = int
        @status = true if int >= array[i + 1]
      end
      break if @status
    end
    conclusion
  end

  def conclusion
    return puts "#{@value} is a peak at index #{@index}" if @status

    puts 'No peak found'
  end
end

finder = PeakFinding.new
finder.find_peak([0, 0, 0])