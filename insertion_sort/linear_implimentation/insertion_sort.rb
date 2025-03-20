# frozen_string_literal: true

# class for controlling ordr f array as it grows
class InsertionSort
  attr_accessor :list

  def initialize
    @list = []
  end

  def insert_value(value)
    list << value
  end

  def insertion_sort(new_value)
    return insert_value(new_value) if list.empty?

    i = 0
    endpoint = list.size - 1
    current_value = nil
    while i <= endpoint
      if list[i] >= new_value
        current_value = list[i]
        list[i] = new_value
      end
      new_value = current_value
      i += 1
    end
    list << new_value
  end
end

