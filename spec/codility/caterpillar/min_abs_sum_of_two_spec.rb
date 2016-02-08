require 'spec_helper'
require 'codility/caterpillar/min_abs_sum_of_two'

RSpec.describe Codility::Caterpillar::MinAbsSumOfTwo do
  include Codility::Caterpillar::MinAbsSumOfTwo

  it 'returns the minimal abs sum of two for any pair of indices in array' do
    a = [1,4,-3]
    expect(solution(a)).to eq(1)
  end

  it 'returns abs sum from any two pair of indices' do
    a = [-8,4,5,-10,3]
    expect(solution(a)).to eq(3)
  end

  it 'works' do
    [
        [[0,1,2,3,4], 0],
        [[-4,-3], 6],
        [[-3,-3,-3,-2,-1,1,3,5], 0]
    ].each do |a, result|
      expect(solution(a)).to eq(result)
    end
  end
end