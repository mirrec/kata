require 'spec_helper'
require 'codility/fibonacci/ladder'

RSpec.describe Codility::Fibonacci::Ladder do
  include Codility::Fibonacci::Ladder

  it 'works' do
    a = [4, 5, 1, 2, 3]
    b = [3 ,2, 4, 3, 1]
    results = [5, 0, 1, 2, 1]

    expect(solution(a, b)).to eq(results)
  end

  it 'works for hude input' do
    a = [30_000]
    b = [30]
    results = [154758433]

    # binding.pry
    expect(solution(a, b, 30_001)).to eq(results)
  end
end