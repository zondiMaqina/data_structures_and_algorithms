# frozen_string_literal: true

require_relative '../../spec_helper'
require_relative '../../../peak_finding/linear_implimentation/lib/peak_finding'

RSpec.describe PeakFinding do
  subject(:peak) { described_class.new }
  let(:array) { [2, 1, 3] }
  describe '#find_peak' do
    context 'when the first element in array is the peak' do
      before do
        allow(peak).to receive(:conclusion)
      end

      it 'will assign that element to peak var' do
        peak.find_peak(array)
        value = peak.instance_variable_get(:@value)
        expect(value).to eql(2)
      end
    end

    context 'when last element is the peak' do
      before do
        allow(peak).to receive(:conclusion)
      end

      it 'will assign that element to peak var' do
        array = [1, 2, 3]
        peak.find_peak(array)
        value = peak.instance_variable_get(:@value)
        expect(value).to eql(3)
      end
    end
  end
end
