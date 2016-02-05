require 'spec_helper'
require 'codility/caterpillar/abs_distinct'

RSpec.describe Codility::Caterpillar::AbsDistinct do
  include Codility::Caterpillar::AbsDistinct

  it 'returns absolute distinct count of array' do
    a = [-5, -3, -1, 0, 3, 6]
    expect(solution(a)).to eq(5)
  end

  it 'returns correct number for all positive' do
    a = [1, 3, 6]
    expect(solution(a)).to eq(3)
  end

  it 'returns correct count for all negative numbers' do
    a = [-6, -3, -1]
    expect(solution(a)).to eq(3)
  end

  it 'returns correct number if there are some sme numbers' do
    a = [1, 1, 1, 1]
    expect(solution(a)).to eq(1)
  end

  it 'returns correct number' do
    a = [1, 2, 2, 3]
    expect(solution(a)).to eq(3)
  end

  it 'returns correct number' do
    a = [-3, -2, -2, 1]
    expect(solution(a)).to eq(3)
  end
end