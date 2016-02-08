require 'spec_helper'
require 'codility/greedy/max_non_overlapping_segments'

RSpec.describe Codility::Greedy::MaxNonOverlappingSegments do
  include Codility::Greedy::MaxNonOverlappingSegments

  it 'returns maximum numbers of non overlapping segments' do
    a = [1,3,7,9,9]
    b = [5,6,8,9,10]
    expect(solution(a, b)).to eq(3)
  end

  it 'works for other inputs' do
    [
        [[],[],0],
        [[1,2,3,4],[1,2,3,4], 4],
        [[1,2,4,5,2],[3,3,4,6,6], 3]
    ].each do |a, b, result|
      expect(solution(a, b)).to eq(result)
    end
  end
end
