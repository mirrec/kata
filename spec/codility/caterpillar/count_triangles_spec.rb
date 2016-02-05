require 'spec_helper'
require 'codility/caterpillar/count_triangles'

RSpec.describe Codility::Caterpillar::CountTriangles do
  include Codility::Caterpillar::CountTriangles

  it 'returns the number of triangular triplets in this array' do
    a = [10, 2, 5, 1, 8, 11, 1]
    # sum?
    # pre count something?
    expect(solution(a)).to eq(5)
  end

  it 'returns 0 for empty array' do
    a = []
    expect(solution(a)).to eq(0)
  end
end