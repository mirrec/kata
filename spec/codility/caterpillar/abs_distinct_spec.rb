require 'spec_helper'
require 'codility/caterpillar/abs_distinct'

RSpec.describe Codility::Caterpillar::AbsDistinct do
  include Codility::Caterpillar::AbsDistinct

  it 'returns absolute distinct count of array' do
    a = [-5, -3, -1, 0, 3, 6]
    expect(solution(a)).to eq(5)
  end
end