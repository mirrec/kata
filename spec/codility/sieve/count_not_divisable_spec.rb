require 'spec_helper'
require 'codility/sieve/count_not_divisable'

RSpec.describe Codility::Sieve::CountNotDivisable do
  include Codility::Sieve::CountNotDivisable

  it 'works' do
    a = [3,1,2,3,6]
    expect(solution(a)).to eq([2, 4, 3, 2, 0])
  end

  it 'works' do
    a = [16,4,8,3,1,1,1,1]
    expect(solution(a)).to eq([1, 3, 2, 3, 4, 4, 4, 4])
  end


  describe '#count_dividers' do
    it 'works' do
      result = [
          [],
          [1],
          [1,2],
          [1,3],
          [1,2,4],
          [1,5],
          [1,2,3,6],
      ]
      occurrence = {
          1 => true,
          2 => true,
          3 => true,
          4 => true,
          5 => true,
          6 => true,
      }
      expect(count_dividers(6, occurrence)).to eq(result)
    end

    it 'does not contain dividers if they are not in occurrence hash' do
      result = [
          [],
          [],
          [2],
          [3],
          [2,4],
          [5],
          [2,3],
      ]

      occurrence = {
          2 => true,
          3 => true,
          4 => true,
          5 => true,
      }

      expect(count_dividers(6, occurrence)).to eq(result)
    end

    it 'fast' do
      occurrence = {}
      10_000.times { |i| occurrence[i] = true }

      expect(count_dividers(10_000, occurrence).count).to eq(10_000 +1)
    end
  end
end
