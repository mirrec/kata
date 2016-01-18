require 'spec_helper'
require 'codility/counting_elements/permutation_check'

RSpec.describe Codility::CountingElements::PermutationCheck do
  include Codility::CountingElements::PermutationCheck

  it 'returns 1 if array is permutation' do
    expect(dam_smart_solution([4,1,3,2])).to eq(1)
  end

  it 'returns 0 if array is not permutation' do
    expect(dam_smart_solution([4,1,3])).to eq(0)
  end

  it 'returns 0 if array is [1,1]' do
    expect(dam_smart_solution([1,1])).to eq(0)
  end

  it 'returns works for large' do
    expect(dam_smart_solution([9, 5, 7, 3, 2, 7, 3, 1, 10, 8])).to eq(0)
  end
end