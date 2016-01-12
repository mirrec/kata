require 'spec_helper'
require 'pry'
require 'codility/odd_occurrences_in_array'

RSpec.describe Codility::OddOccurrencesInArray do
  include Codility::OddOccurrencesInArray

  it 'returns element that is there only once' do
    expect(solution([1,3,1])).to eq(3)
  end

  it 'does not mather if given number is there multiple times' do
    expect(solution([1,3,1,1,1])).to eq(3)
  end

  it 'return element that is there odd number of times' do
    expect(solution([1,1,1,1,1])).to eq(1)
  end

  it 'does not fail for empty array' do
    expect(solution([])).to eq(nil)
  end
end