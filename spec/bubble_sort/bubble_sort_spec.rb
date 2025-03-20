# frozen_string_literal: true

require_relative '../spec_helper'
require_relative '../../bubble_sort/bubble_sort'

RSpec.describe BubbleSort do
  subject(:bubble_sort) { described_class.new }
  let(:array) { [3, 1, 2] }

  describe 'sort_array' do
    context 'when array has only 1st index unsorted' do
      it 'will still return array fully sorted' do
        result = bubble_sort.bubble_sort(array)
        expect(result).to eql([1, 2, 3])
      end
    end

    context 'when the last integer is unsorted' do
      it 'will return sorted array' do
        array = [1, 3, 2]
        result = bubble_sort.bubble_sort(array)
        expect(result).to eql([1, 2, 3])
      end
    end

    context 'when array is empty' do
      it 'will notify user' do
        notification = 'array is empty'
        expect(bubble_sort).to receive(:puts).with(notification)
        bubble_sort.bubble_sort([])
      end
    end
  end
end
