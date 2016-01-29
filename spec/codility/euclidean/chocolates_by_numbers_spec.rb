require 'spec_helper'
require 'codility/euclidean/chocolates_by_numbers'

RSpec.describe Codility::Euclidean::ChocolatesByNumbers do
  include Codility::Euclidean::ChocolatesByNumbers

  it 'works example' do
    expect(solution(10, 4)).to eq(5)
  end

  it 'works with several examples' do
    [
        [10,1, 10],
        [1,10, 1],
        [9,3, 3],
        [3,9, 1],
        [5,7, 5],
        [7,5, 7],
        [1,1, 1],
    ].each do |n, m, result|
      expect(solution(n, m)).to eq(result)
    end
  end
end
