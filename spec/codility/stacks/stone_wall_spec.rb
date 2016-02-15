require 'spec_helper'
require 'codility/stacks/stone_wall'

RSpec.describe Codility::Stacks::StoneWall do
  include Codility::Stacks::StoneWall

  it 'returns the minimum number of blocks needed to build it' do
    h = [8,8,5,7,9,8,7,4,8]
    expect(solution(h)).to eq(7)
  end

  it 'works on simple example' do
    h = [1,2,3,2,1]
    expect(solution(h)).to eq(3)
  end

  it 'works on simple example' do
    h = [3,2,1,2,3]
    expect(solution(h)).to eq(5)
  end

  it 'works' do
    h = [3,5,4,3]
    expect(solution(h)).to eq(3)
  end
end