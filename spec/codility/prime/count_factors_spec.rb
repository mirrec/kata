require 'spec_helper'
require 'codility/prime/count_factors'

RSpec.describe Codility::Prime::CountFactors do
  include Codility::Prime::CountFactors

  it 'works' do
    n = 24
    expect(solution(n)).to eq(8)
  end

  it 'works for 1' do
    n = 1
    expect(solution(n)).to eq(1)
  end

  it 'works for 2' do
    n = 2
    expect(solution(n)).to eq(2)
  end

  it 'works for 4' do
    n = 4
    expect(solution(n)).to eq(3)
  end
end