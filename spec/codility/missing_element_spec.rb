require 'spec_helper'
require 'codility/missing_element'

RSpec.describe Codility::MissingElement do
  include Codility::MissingElement

  it 'returns missing element in an array' do
    expect(solution([2,3,1,5])).to eq(4)
  end

  it 'handles empty array correctly' do
    expect(solution([])).to eq(1)
  end

  it 'handles one element correctly' do
    expect(solution([2])).to eq(1)
  end

  it 'handles one element correctly' do
    expect(solution([1,3])).to eq(2)
  end

  it 'handles one element correctly' do
    expect(solution([1,2])).to eq(3)
  end
end
