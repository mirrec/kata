require 'spec_helper'
require 'codility/sorting/max_product_of_three'

RSpec.describe Codility::Sorting::MaxProductOfThree do
  include Codility::Sorting::MaxProductOfThree

  it 'returns maximum triplet result' do
    a = [-3, 1 , 2, -2, 5, 6]
    expect(solution(a)).to eq(60)
  end

  it 'counts correctly with minimal array' do
    a = [-5,0,1]
    expect(solution(a)).to eq(0)
  end

  it 'returns maximum' do
    a = [1,2,3,4,5]
    expect(solution(a)).to eq(60)
  end

  it 'returns maximum with negative' do
    a = [-5,-4,-3,-2,-1]
    expect(solution(a)).to eq(-6)
  end

  it 'returns 1' do
    a = [-1, -1, 0, 0, 1]
    expect(solution(a)).to eq(1)
  end

  it 'compares 2 negative with positive side' do
    a = [-4, -4, 1, 2, 3]
    expect(solution(a)).to eq(48)

    a = [-2, -1, 2, 2, 3]
    expect(solution(a)).to eq(12)

    a = [-2, -1, 0, 2, 3]
    expect(solution(a)).to eq(6)
  end
end