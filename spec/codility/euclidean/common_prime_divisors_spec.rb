require 'spec_helper'
require 'codility/euclidean/common_prime_divisors'

RSpec.describe Codility::Euclidean::CommonPrimeDivisors do
  include Codility::Euclidean::CommonPrimeDivisors

  it 'works' do
    # 15 = 5x3
    # 75 = 5x5x3
    # 1, 1

    a = [15, 10, 3, 11, 22, 1, 2, 4]
    b = [75, 30, 5, 11, 11, 1, 1, 2]

    expect(solution(a, b)).to eq(4)
  end

  it 'works with edge cases' do
    a = [1]
    b = [1]

    expect(solution(a, b)).to eq(1)

    expect(solution([2], [5])).to eq(0)
  end

  it 'works with edge cases' do

    a = [3*3*5, 3*3*5, 3*3*3*5, 3*3*3*5*5*5*5*2]
    b = [3*5*5, 3*5,   3*5,     3*3*5*5]

    # [45, 45, 135]
    # [75, 15, 15]
    #
    # GCD
    # [15, 15, 15]
    # [3,  3,  9]
    # [25, 1,  1]

    # LCM
    # [225, 45, 9]
    # [5,    1, 1]

    expect(solution(a, b)).to eq(3)
  end

  it 'does not mark incorrect as correct' do
    # 2,3,5
    expect(solution([60], [6])).to eq(0)
  end
end