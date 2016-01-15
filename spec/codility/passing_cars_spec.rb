require 'spec_helper'
require 'codility/passing_cars'

RSpec.describe Codility::PassingCars do
  include Codility::PassingCars

  it 'works on given example' do
    a = []
    a[0] = 0
    a[1] = 1
    a[2] = 0
    a[3] = 1
    a[4] = 1

    expect(solution(a)).to eq(5)
  end

  it 'returns -1 if number is > 1_000_000' do
    a = [0, 1] * 45_000
    expect(correct_solution(a)).to eq(-1)
  end
end
