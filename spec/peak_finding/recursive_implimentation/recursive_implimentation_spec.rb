# frozen_string_literal: true

require_relative '../../spec_helper'
require_relative '../../../peak_finding/recursive_implimentation/peak_finding.rb'

# frozen_string_literal: true

RSpec.describe PeakFinding do
  subject(:peak) { described_class.new }
  let(:array) { [1, 2, 3, 4, 5, 6] }

  describe '#find_peak' do
    context 'when peak is at the end of array' do
      it 'will find peak in lway less stpes than linear alg' do
        linear_steps = array.size
        peak.find_peak(array, 0, array.size - 1)
        alg_steps = peak.steps
        expect(alg_steps).to be < linear_steps
      end
    end
  end
end
