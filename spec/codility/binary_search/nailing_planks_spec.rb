require 'spec_helper'
require 'codility/binary_search/nailing_planks'

RSpec.describe Codility::BinarySearch::NailingPlanks do
  include Codility::BinarySearch::NailingPlanks

  it 'returns the minimum number of nails that, used sequentially, allow all the planks to be nailed' do
    a = [1,4,5,8]
    b = [4,5,9,10]

    c = [4,6,7,10,2]

    # 1.....4
    #       4.5
    #         5......9
    #              8...10
    expect(solution(a, b, c)).to eq(4)

    # 1...4
    #         7...10
  end

  it 'returns -1 if it is not possible to nailed all planks' do
    a = [1,7]
    b = [4,10]

    c = [4,6,5,1,2]
    expect(solution(a, b, c)).to eq(-1)

    [0,1,2,2,3,4]
  end

  it 'returns as least nail as possible' do
    a = [1,1,1,1,1]
    b = [5,5,5,5,5]
    c = [1,2,3,4,5]

    expect(solution(a, b, c)).to eq(1)
  end
end