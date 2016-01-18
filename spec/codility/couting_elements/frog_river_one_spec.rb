require 'spec_helper'
require 'codility/counting_elements/frog_river_one'

RSpec.describe Codility::CountingElements::FrogRiverOne do
  include Codility::CountingElements::FrogRiverOne

  it 'returns smallest number of second when frog is able to get to the position x' do
    a = []
    a[0] = 1
    a[1] = 3
    a[2] = 1
    a[3] = 4
    a[4] = 2
    a[5] = 3
    a[6] = 5
    a[7] = 4

    expect(solution(5, a)).to eq(6)
    expect(solution(5, [1,2,3,4,5])).to eq(4)
  end

  it 'returns -1 if frog is not able to get to the position she wants' do
    a = []
    a[0] = 1
    a[1] = 2
    a[2] = 2
    expect(solution(3, a)).to eq(-1)
  end

  it 'smallest array' do
    expect(solution(1, [1])).to eq(0)
  end

  it 'smallest array' do
    expect(solution(2, [1])).to eq(-1)
  end
end