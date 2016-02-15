require 'spec_helper'
require 'codility/prime/min_perimeter_rectangle'

RSpec.describe Codility::Prime::MinPerimeterRectangle do
  include Codility::Prime::MinPerimeterRectangle

  it 'returns the minimal perimeter of any rectangle whose area is exactly equal to N' do
    n = 30
    expect(solution(n)).to eq(22)
  end

  it 'works for 1' do
    n = 1
    expect(solution(n)).to eq(4)
  end
end