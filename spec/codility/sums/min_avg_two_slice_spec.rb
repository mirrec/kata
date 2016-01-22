require 'spec_helper'
require 'codility/sums/min_avg_two_slice'

RSpec.describe Codility::Sums::MinAvgTwoSlice do
  include Codility::Sums::MinAvgTwoSlice

  it 'works on super simple' do
    a = [1,2,3]
    expect(solution(a)).to eq(0)
  end

  it 'works with example' do
    a = [4,2,2,5,1,5,8]

    expect(solution(a)).to eq(1)
  end

  it 'works for negative numbers' do
    a = [-1, -2, 5,-10]

    expect(solution(a)).to eq(2)
  end

  it 'works for smallest array' do
    a = [1,0]
    expect(solution(a)).to eq(0)
  end

  it 'works with zeros' do
    a = [0,0,0]
    expect(solution(a)).to eq(0)
  end

  it 'it returns first slice starting position if there are more minimum avg slices' do
    a = [5,1,1,6,1,1]
    expect(solution(a)).to eq(1)
  end

  it 'works for hude input' do
    a = [0] * 10_000
    expect(solution(a)).to eq(0)
  end

  # negative numbers! in array
  # array has minimal 2 elements
end