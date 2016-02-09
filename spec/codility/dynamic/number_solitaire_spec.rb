require 'spec_helper'
require 'codility/dynamic/number_solitaire'

RSpec.describe Codility::Dynamic::NumberSolitaire do
  include Codility::Dynamic::NumberSolitaire

  it 'returns the maximal result that can be achieved on the board represented by array' do
    a = [1, -2, 0, 9, -1 , -2]
    expect(solution(a)).to eq(8)
  end

  it 'works for other examples' do
    a = [1,1,1,1,1,1,1]
    expect(solution(a)).to eq(7)
  end
end