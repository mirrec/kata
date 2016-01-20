require 'spec_helper'
require 'codility/prime/min_perimeter_rectangle'

RSpec.describe Codility::Prime::MinPerimeterRectangle do
  include Codility::Prime::MinPerimeterRectangle

  it 'works' do
    n = 30
    expect(solution(n)).to eq(22)
  end

  it 'works for 1' do
    n = 1
    expect(solution(n)).to eq(4)
  end
end