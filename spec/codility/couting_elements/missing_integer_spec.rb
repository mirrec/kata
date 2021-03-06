require 'spec_helper'
require 'codility/counting_elements/missing_integer'

RSpec.describe Codility::CountingElements::MissingInteger do
  include Codility::CountingElements::MissingInteger

  it 'returns the minimal positive integer (greater than 0) that does not occur in A' do
    a = []
    a[0] = 1
    a[1] = 3
    a[2] = 6
    a[3] = 4
    a[4] = 1
    a[5] = 2

    # 1..6

    # sum of all positive - sum(1..max)
    # more than one element can be missing

    expect(solution(a)).to eq(5)
  end

  it 'can contains negative number in array'

  it 'array has at least one element' do
    a = [2]
    expect(solution(a)).to eq(1)
  end

  it 'if all negative return 1' do
    a = [-2,-1]
    expect(solution(a)).to eq(1)
  end

  it 'returns next number if all number are there' do
    a = [1]
    expect(solution(a)).to eq(2)
  end
end