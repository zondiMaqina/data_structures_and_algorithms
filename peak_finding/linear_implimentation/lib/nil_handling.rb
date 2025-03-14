# frozen_string_literal: true

# module for handling checking if value is a peak
module NilHandling
  def left_nil?(array, index)
    index - 1 < 0
  end

  def right_nil?(array, index)
    array[index + 1].nil?
  end

  def has_both_neighbours?(array, index)
    # has left and right neighbour
    !left_nil?(array, index) && !right_nil?(array, index)
  end
end