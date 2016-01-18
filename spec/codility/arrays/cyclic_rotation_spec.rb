require 'spec_helper'
require 'codility/arrays/cyclic_rotation'

RSpec.describe Codility::Arrays::CyclicRotation do
  include Codility::Arrays::CyclicRotation

  it 'works' do
    a = [3, 8, 9, 7, 6]
    k = 3
    expect(solution(a, k)).to eq([9, 7, 6, 3, 8])
  end

  it 'works for empty array' do
    a = []
    k = 3
    expect(solution(a, k)).to eq([])
  end

  it 'does not change array if k is 0' do
    a = [1, 2, 3]
    k = 0
    expect(solution(a, k)).to eq([1,2,3])
  end
end