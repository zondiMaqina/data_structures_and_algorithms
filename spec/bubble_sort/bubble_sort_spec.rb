# frozen_string_literal: true

require_relative '../spec_helper'
require_relative '../../bubble_sort/bubble_sort'

RSpec.describe BubbleSort do
  subject(:bubble_sort) { described_class.new }
  let(:array) { [2, 1, 3] }

  describe 'sort_array' do
    context 'when array has only 1st index unsorted' do
      it 'will still return array fully sorted' do
        result = bubble_sort.sort_array(array)
        expect(result).to eql([1, 2, 3])
      end
    end
  end
end
