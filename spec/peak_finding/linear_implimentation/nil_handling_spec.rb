# frozen_string_literal: true

require_relative '../../../peak_finding/linear_implimentation/lib/nil_handling.rb'
require_relative '../../spec_helper'

RSpec.configure do |c|
  c.include NilHandling, :foo => :bar
end

RSpec.describe 'NilHandling', :foo => :bar do
  let(:array) { [1, 2, 3] }

  describe 'left_nil?' do
    context 'when neighbour index is a negative index' do
      it 'will return true' do
        index = 0
        expect(left_nil?(array, index)).to be true
      end
    end

    context 'when neighbour index is not negative' do
      it 'will return false' do
        index = 1
        expect(left_nil?(array, index)).to be false
      end
    end
  end

  describe 'right_nil?' do
    context 'when right neighbour is outside array scope' do
      it 'will return true' do
        index = 2
        expect(right_nil?(array, index)).to be true
      end

      context 'when neighbour index is within array' do
        it 'will return false' do
          index = 1
          expect(left_nil?(array, index)).to be false
        end
      end
    end
  end

  describe 'has_both_neighbours?' do
    context 'when value index is between' do
      it 'will have both left and right neighbours' do
        index = 1
        expect(has_both_neighbours?(array, index)).to be true
      end
    end
  end
end
