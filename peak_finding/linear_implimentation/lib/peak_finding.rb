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
      @value = int
      if has_both_neighbours?(array, i)
        @index = i
        @status = true if int >= array[i - 1] && int >= array[i + 1]
      elsif left_nil?(array, i) == false
        @index = i
        @status = true if int >= array[i - 1]
      else
        @index = i
        @status = true if int >= array[i + 1]
      end
      break if @status # breaks if peak is found (SCE)
    end
    conclusion
  end

  def conclusion
    return puts "#{@value} is a peak at index #{@index}" if @status

    puts 'No peak found'
  end
end

# The peak find method has a heavy if statement branches so that comparing an integer to nil is avoided

# SCE -> Short Circuit Evaluation
