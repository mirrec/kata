require 'spec_helper'
require 'pry'
require 'codility/binary_sequence'

RSpec.describe Codility::BinarySequence do
  include Codility::BinarySequence

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

