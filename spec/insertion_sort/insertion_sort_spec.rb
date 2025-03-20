# frozen_string_literal: true

require_relative '../../insertion_sort/linear_implimentation/insertion_sort'

require_relative '../spec_helper'

RSpec.describe InsertionSort do
  subject(:insert_sort) { described_class.new }
  let(:new_value) { 1 }
  let(:array) { [1, 2, 3]}

  describe '#insertion_sort' do
    context 'when inserting new value to array' do
      before do
        allow(insert_sort).to receive(:list).and_return(array)
      end

      it 'will insert it respecting order of integers' do
        insert_sort.insertion_sort(new_value)
        expect(insert_sort.list).to eql([1, 1, 2, 3])
      end
    end

    context 'when array is empty' do
      it 'will return array with new value' do
        result = insert_sort.insertion_sort(2)
        expect(result).to eql([2])
      end
    end
  end
end