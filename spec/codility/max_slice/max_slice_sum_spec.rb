require 'spec_helper'
require 'codility/max_slice/max_slice_sum'

RSpec.describe Codility::MaxSlice::MaxSliceSum do
  include Codility::MaxSlice::MaxSliceSum

  it 'works' do
    a = [3,2,-6,4,0]
    expect(solution(a)).to eq(5)
  end

  it 'works for array with 1 element' do
    a = [4]
    expect(solution(a)).to eq(4)
  end

  it 'works with negative' do
    a = [-1]
    expect(solution(a)).to eq(-1)
  end

  it 'works with all negative' do
    a = [-1, -2, -3]
    expect(solution(a)).to eq(-1)
  end

  it 'works with all positive' do
    a = [1, 2, 3]
    expect(solution(a)).to eq(6)
  end
end