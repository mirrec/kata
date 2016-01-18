require 'spec_helper'
require 'codility/sorting/distinct'

RSpec.describe Codility::Sorting::Distinct do
  include Codility::Sorting::Distinct

  it 'returns number of distinct numbers' do
    a = [2,1,1,2,3,1]

    expect(solution(a)).to eq(3)
  end

  it 'returns 0 if array is empty' do
    expect(solution([])).to eq(0)
  end

  it 'works for negative numbers as well' do
    expect(solution([-1, -2, 0, -2, 3])).to eq(4)
  end
end