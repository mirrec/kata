require 'spec_helper'
require 'codility/number_of_disc_intersections'

RSpec.describe Codility::NumberOfDiscIntersections do
  include Codility::NumberOfDiscIntersections

  it 'works' do
    a = []
    a[0] = 1
    a[1] = 5
    a[2] = 2
    a[3] = 1
    a[4] = 4
    a[5] = 0

    expect(solution(a)).to eq(11)
  end

  it 'returns 0 if there is no intersection' do
    expect(solution([0,0,0,0])).to eq(0)
  end

  # The function should return −1 if the number of intersecting pairs exceeds 10,000,000
  it 'over 10_000_000' do
    a = [2000] * 100_000

    expect(solution(a)).to eq(-1)
  end

  it 'array is empty' do
    expect(solution([])).to eq(0)
  end
end