require 'spec_helper'
require 'codility/max_slice/max_double_slice_sum'

RSpec.describe Codility::MaxSlice::MaxDoubleSliceSum do
  include Codility::MaxSlice::MaxDoubleSliceSum

  it 'returns the maximal sum of any double slice' do
    a = [3,2,6,-1,4,5,-1,2]
    expect(solution(a)).to eq(17)
  end

  it 'works on small' do
    a = [1,2,3,0,1,0,3]
    expect(solution(a)).to eq(6)
  end

  it 'returns 0 if array is has 3 elements' do
    a = [1,2,3]
    expect(solution(a)).to eq(0)
  end

  it 'works' do
    a = [1,2,3,4]
    expect(solution(a)).to eq(3)
  end

  it 'returns 0 if all numbers are negative' do
    a = [-1,-2,-3,-4,-5]
    expect(solution(a)).to eq(0)
  end

  it 'works' do
    a = [0, 10, -5, -2, 0]
    expect(solution(a)).to eq(10)
  end
end