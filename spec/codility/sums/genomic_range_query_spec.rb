require 'spec_helper'
require 'codility/sums/genomic_range_query'

RSpec.describe Codility::Sums::GenomicRangeQuery do
  include Codility::Sums::GenomicRangeQuery

  it 'works with example' do
    # C A G C C T A
    #     2   4
    s = 'CAGCCTA'
    p = [2, 5, 0]
    q = [4, 5, 6]

    expect(solution(s, p, q)).to eq([2, 4, 1])
  end
end