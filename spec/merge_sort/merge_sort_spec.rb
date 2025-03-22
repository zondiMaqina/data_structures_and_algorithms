# frozen_string_literal: true

require_relative '../spec_helper'
require_relative '../../merge_sort/merge_sort'

RSpec.describe MergeSort do
  let(:unsorted_array) { [5, 4, 3, 2, 1]}
  subject(:array_sorter) { described_class.new }
       
  describe '#merge_sort' do
    context 'when given an unsorted array' do
      it 'will return array sorted' do
        sorted_array = array_sorter.merge_sort(unsorted_array)
        expect(sorted_array).to eq([1, 2, 3, 4, 5])
      end 
    end
  end
end
