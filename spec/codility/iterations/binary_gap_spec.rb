require 'spec_helper'
require 'codility/iterations/binary_gap'

RSpec.describe Codility::Iterations::BinaryGap do
  include Codility::Iterations::BinaryGap

  it 'returns 0 if there is no gab' do
    expect(solution(0)).to eq(0)
  end

  it 'returns 0 if there is no gab' do
    expect(solution(15)).to eq(0)
  end

  it 'returns correct number of binary gab length' do
    expect(solution(9)).to eq(2)
  end

  it 'does not contain result that are not surounded by 1' do
    expect(solution(20)).to eq(1)
  end
end

