require 'spec_helper'
require 'codility/future/array_inversion_count'

RSpec.describe Codility::Future::ArrayInversionCount do
  include Codility::Future::ArrayInversionCount

  it 'returns count of inversion pairs such that p < q and a[p] > a[q]' do
    a = [-1, 6, 3, 4, 7, 4]

    # [1,2] => [6, 3]
    # [1,3] => [6, 4]
    # [1,5] => [6, 4]
    # [4,5] => [7, 4]

    # time:n * log n
    # space:

    expect(solution(a)).to eq(4)
  end

  it 'works for other inputs' do
    a = [9, 8, 7, 6, 5, 4]
    expect(solution(a)).to eq(15)
  end

  it 'works with all the same numbers' do
    a = [2, 2, 2, 2, 2, 2]
    expect(solution(a)).to eq(0)
  end

  it 'returns -1 if results > 1_000_000_000' do
    a = 45_000.downto(1).to_a
    expect(solution(a)).to eq(-1)
  end

  describe '#find_new_index' do
    it 'returns index to which element should be inserted to get' do
      expect(find_new_index(5, [1, 2, 3, 4, 6])).to eq(4)
      # expect(find_new_index(0, [1, 2, 6])).to eq(0)
    end

    it 'returns minimal index when the same element is already in given array' do
      expect(find_new_index(1, [1, 2, 6])).to eq(0)
    end

    it 'returns array length if number should be passed to the after element' do
      expect(find_new_index(7, [1, 2, 6])).to eq(3)
    end

    it 'returns 0 for empty array' do
      expect(find_new_index(7, [])).to eq(0)
    end
  end
end