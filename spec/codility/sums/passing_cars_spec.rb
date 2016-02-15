require 'spec_helper'
require 'codility/sums/passing_cars'

RSpec.describe Codility::Sums::PassingCars do
  include Codility::Sums::PassingCars

  it 'returns the number of pairs of passing cars' do
    a = []
    a[0] = 0
    a[1] = 1
    a[2] = 0
    a[3] = 1
    a[4] = 1

    expect(solution(a)).to eq(5)
  end

  it 'returns -1 if number is > 1_000_000_000' do
    a = [0, 1] * 45_000
    expect(solution(a)).to eq(-1)
  end
end
