require 'spec_helper'
require 'codility/time_complexity/tape_equilibrium'

RSpec.describe Codility::TimeComplexity::TapeEquilibrium do
  include Codility::TimeComplexity::TapeEquilibrium

  it 'finds smallest different between left side and right side' do
    expect(solution([3,1,2,4,3])).to eq(1)
  end

  it 'works for small array' do
    expect(solution([1,2])).to eq(1)
  end

  it 'works for small array' do
    expect(solution([2, 1])).to eq(1)
  end

  it 'works for small array' do
    expect(solution([1, 1, 2])).to eq(0)
  end

  it 'works for negative numbers' do
    expect(solution([-1, 1, 2])).to eq(2)
  end

  it 'works for negative numbers' do
    expect(solution([-1, -1, -2])).to eq(0)
  end

  it 'works on hude input' do
    a = [-896, -826, -186, -785, 803, -924, 72, -336, 705, -681, -326, -333, -510, -997, -128, -825, 195, -861, -369, -103, 811, -815, -716, 580, -958, 823, 147, -470, 676, 538, -313, 603, -587, 218, 54, 619, -370, -204, 539, 26, 370, 277, 333, 781, -28, 337, -251, -937, 509, -637, 641, 828, 316, -660, -326, -218, -854, -87, 146, -328, -622, -824, 257, -975, -296, -542, 64, 448, 819, 278, 984, 929, 260, -534, -32, -645, 984, -111, 504, -912, -731, -614, -488, -296, -456, -132, -159, -783, -875, -290, -823, -134, -983, 72, -853, 389, -192, 971, -475, -55]

    expect(solution(a)).to eq(39)
  end

  it 'works with negative numbers' do
    a = [-896, -826, -186, -785, 803, -924, 72, -336, 705, -681, -326, -333, -510]
    expect(solution(a)).to eq(407)
  end

  it 'works like this' do
    a = [-58, -51, 13, -46, 112, -60, 39, -2, 103, -36, -1, -1, -19]
    expect(solution(a)).to eq(31)
  end

  it 'works with next step' do
    a = [10, 10, -20, 1, 1]
    expect(solution(a)).to eq(0)
  end
end