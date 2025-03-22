# frozen_string_literal: true

require_relative '../../spec_helper'
require_relative '../../../peak_finding/linear_implimentation/2D_array_implimentation/peak_finding'

RSpec.describe MatrixPeakFinding do
  let(:matrix) { [[10, 20, 30], [40, 50, 60], [70, 80, 90]] }
  subject(:peak) { described_class.new }

  describe '#find_mid_peak' do
    context 'when given the midpoint of matrix' do
      it 'will find peak of that array' do
        midpeak = peak.find_mid_peak([40, 50, 60, 80])
        expect(midpeak).to eql(80)
      end
    end

    context 'when peak in mid array is at first index' do
      it 'will return that element in 1st index' do
        midpeak = peak.find_mid_peak([80, 40, 30, 20])
        expect(midpeak).to eql(80)
      end
    end
  end
end