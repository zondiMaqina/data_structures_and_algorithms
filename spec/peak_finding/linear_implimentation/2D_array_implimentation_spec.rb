# frozen_string_literal: true

require_relative '../../spec_helper'
require_relative '../../../peak_finding/linear_implimentation/2D_array_implimentation/peak_finding'

RSpec.describe MatrixPeakFinding do
  let(:matrix) { [[10, 20, 30], [40, 50, 60], [70, 80, 90]] }
  subject(:peak) { dscribed_class.new }

  describe '#find_mid' do
    context 'when given the midpoint of matrix' do
      it 'will find midpoint of that array' do
        midpoint = peak.find_mid
        expect(midpoint).to eql(50)
      end
    end
  end
end