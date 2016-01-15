require 'spec_helper'
require 'codility/prefix_sums'

RSpec.describe Codility::PrefixSums do
  include Codility::PrefixSums

  it 'returns maximum number of correctable mushrooms' do
    a = [2,3,7,5,1,3,9]

    expect(solution(a, 4, 6)).to eq(25)
  end
end