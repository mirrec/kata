require 'spec_helper'
require 'codility/caterpillar/count_distinct_slices'

RSpec.describe Codility::Caterpillar::CountDistinctSlices do
  include Codility::Caterpillar::CountDistinctSlices

  it 'returns the number of distinct slices' do
    m = 6
    a = [3,4,5,5,2]
    expect(solution(m, a)).to eq(9)
  end

  it 'returns correct result' do
    a = [1,2,3,4]
    expect(solution(:does_not_mather, a)).to eq(10)
  end

  it 'returns correct result for all the same numbers' do
    [
        [[1,1,1,1], 4],
        [[1,1,1,2], 5],
        [[0,1,1,2], 6],
        [[1, 3, 4, 1, 2, 1, 3, 2, 1], 24],
        [[2, 3, 3, 3, 2, 4, 1, 2, 5, 1, 4, 5, 1, 4], 37],
    ].each do |a, result|
      expect(solution(:does_not_mather, a)).to eq(result)
    end
  end

  # 5000050000
  # 1000000000
end