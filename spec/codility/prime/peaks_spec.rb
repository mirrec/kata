require 'spec_helper'
require 'codility/prime/peaks'

RSpec.describe Codility::Prime::Peaks do
  include Codility::Prime::Peaks

  it 'works' do
    a = [1,2,3,4,3,4,1,2,3,4,6,2]
    expect(solution(a)).to eq(3)
  end

  it 'returns 0 if there is not possible to split this group' do
    a = [1,1,1,1,1]
    expect(solution(a)).to eq(0)
  end

  it 'works' do
    a = [1,2,1,1,1]
    expect(solution(a)).to eq(1)
  end
end
