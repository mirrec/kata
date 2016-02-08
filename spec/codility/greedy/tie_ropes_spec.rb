require 'spec_helper'
require 'codility/greedy/tie_ropes'

RSpec.describe Codility::Greedy::TieRopes do
  include Codility::Greedy::TieRopes

  it 'returns the maximum number of ropes of length greater than or equal to K that can be created' do
    a = [1,2,3,4,1,1,3]

    expect(solution(4, a)).to eq(3)

    expect(solution(2, a)).to eq(5)

    a = [1,1,1,1,1]
    expect(solution(1, a)).to eq(5)
  end
end