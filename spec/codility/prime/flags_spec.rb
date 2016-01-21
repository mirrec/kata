require 'spec_helper'
require 'codility/prime/flags'

RSpec.describe Codility::Prime::Flags do
  include Codility::Prime::Flags

  it 'works' do
    a = [1,5,3,4,3,4,1,2,3,4,6,2]
    expect(solution(a)).to eq(3)
  end

  it 'works' do
    a = [1, 3, 1]
    expect(solution(a)).to eq(1)
  end

  it 'returns 0 for array that does not have a peak' do
    a = [1]
    expect(solution(a)).to eq(0)

    a = [1,2]
    expect(solution(a)).to eq(0)
  end

  it 'find peaks' do
    a = [1,5,3,4,3,4,1,2,3,4,6,2]
    expect(find_peak_positions(a)).to eq([1,3,5,10])
  end

  it 'find peaks' do
    a = [1,1,1,1,1]
    expect(find_peak_positions(a)).to eq([])

    a = [1,2,3,4,5]
    expect(find_peak_positions(a)).to eq([])

    a = [5,4,3,2,1]
    expect(find_peak_positions(a)).to eq([])
  end
end