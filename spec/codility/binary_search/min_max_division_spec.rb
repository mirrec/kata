require 'spec_helper'
require 'codility/binary_search/min_max_division'

RSpec.describe Codility::BinarySearch::MinMaxDivision do
  include Codility::BinarySearch::MinMaxDivision

  it 'returns minimal sum from array that is split to given number of blocks' do
    k = 3
    m = nil # whatever, it will not be used
    a = [2,1,5,1,2,2,2]
    expect(solution(k, m, a)).to eq(6)
  end

  it 'returns correct result with minimal numbers' do
    k = 1
    m = nil # whatever, it will not be used
    a = [1]
    expect(solution(k, m, a)).to eq(1)
  end
end