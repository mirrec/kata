require 'spec_helper'
require 'codility/sorting/triangle'

RSpec.describe Codility::Sorting::Triangle do
  include Codility::Sorting::Triangle

  it 'returns 1 if array contains at least one triangle' do
    a = [10, 2, 5, 1, 8, 20]

    expect(solution(a)).to eq(1)
  end

  it 'returns 0 if not triangle' do
    a = [1, 5, 20, 50]

    expect(solution(a)).to eq(0)
  end

  it 'return 0 for empty array' do
    a = []
    expect(solution(a)).to eq(0)
  end

  it 'can contains negative numbers' do
    a = [-10, -2, -5, -1, -8, -20]

    expect(solution(a)).to eq(0)
  end
end

