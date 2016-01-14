require 'spec_helper'
require 'codility/counting_elements'

RSpec.describe Codility::CountingElements do
  include Codility::CountingElements

  describe '#counting' do
    it 'return representation in array how many elements we have of given number' do
      a = [1,2,2,3,5]
      occurence = [0,1,2,1,0,1]

      expect(counting(a)).to eq(occurence)
    end
  end

  it 'returns true if there is a swap change that make sums of array equals' do
    a = [2,2] # 4 +1
    b = [3,3] # 6 -1

    expect(swap_of_elements(a, b)).to eq(true)

    a = [2,4] # 6 +3
    b = [5,7] # 12 -3

    expect(swap_of_elements(a, b)).to eq(true)
  end

  it 'returns false if there is no swap that can make array sums equal' do
    a = [1,2] # 6 +3
    b = [5,5] # 12 -3

    expect(swap_of_elements(a, b)).to eq(true)
  end
end