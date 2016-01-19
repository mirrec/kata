require 'spec_helper'
require 'codility/max_slice/max_profit'

RSpec.describe Codility::MaxSlice::MaxProfit do
  include Codility::MaxSlice::MaxProfit

  it 'works' do
    a = []
    a[0] = 23171
    a[1] = 21011
    a[2] = 21123
    a[3] = 21366
    a[4] = 21013
    a[5] = 21367

    expect(solution(a)).to eq(356)
  end

  it 'works' do
    a = [1,2,3,0,0,4]
    expect(solution(a)).to eq(4)
  end

  it 'works' do
    a = [4,3,2]
    expect(solution(a)).to eq(0)
  end

  it 'works' do
    a = [1,2,3,0,1,0,3]
    expect(solution(a)).to eq(3)
  end

  it 'works' do
    a = [1,2]
    expect(solution(a)).to eq(1)

    a = [2,1]
    expect(solution(a)).to eq(0)
  end
end