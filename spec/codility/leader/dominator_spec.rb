require 'spec_helper'
require 'codility/leader/dominator'

RSpec.describe Codility::Leader::Dominator do
  include Codility::Leader::Dominator

  it 'works' do
    a = [3,4,3,2,3,-1,3,3]

    expect(solution(a)).to eq(0)
  end

  it 'returns -1 if no dominator' do
    a = [4,4,3,3]

    expect(solution(a)).to eq(-1)
  end

  it 'returns -1 for empty array' do
    a = []
    expect(solution(a)).to eq(-1)
  end

  it 'works' do
    a = [1,1,1,2,2,2,2]
    expect(solution(a)).to eq(3)
  end

  it 'works' do
    a = [1,2,3,4,5]
    expect(solution(a)).to eq(-1)
  end
end