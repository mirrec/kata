require 'spec_helper'
require 'codility/sorting'

RSpec.describe Codility::Sorting do
  include Codility::Sorting

  it 'sorts given array' do
    expect(merge_sort([4,3,2,1])).to eq([1,2,3,4])
  end

  it 'sorts odd array' do
    expect(merge_sort([4,3,2])).to eq([2,3,4])
  end
end