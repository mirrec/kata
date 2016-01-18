require 'spec_helper'
require 'codility/counting_elements/max_counters'

RSpec.describe Codility::CountingElements::MaxCounters do
  include Codility::CountingElements::MaxCounters

  it 'works' do
    a = []
    a[0] = 3
    a[1] = 4
    a[2] = 4
    a[3] = 6
    a[4] = 1
    a[5] = 4
    a[6] = 4
    n = 5

    expect(solution(n, a)).to eq([3,2,2,4,2])
  end

  it 'works' do
    a = [3,3,3]

    expect(solution(2, a)).to eq([0,0])
  end

  it 'works' do
    a = [3,3,3]

    expect(solution(3, a)).to eq([0,0,3])
  end

  it 'works' do
    a = [3,4,3]

    expect(solution(3, a)).to eq([1,1,2])
  end

  it 'works' do
    a = [1]

    expect(solution(1, a)).to eq([1])
  end
end
