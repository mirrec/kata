require 'spec_helper'
require 'codility/caterpillar/lesson'

RSpec.describe Codility::Caterpillar::Lesson do
  include Codility::Caterpillar::Lesson

  describe '#sub_sum?' do
    it 'returns true if given array contains given sub sum' do
      a = [1,3,1,2,7]
      expect(sub_sum?(a, 6)).to eq(true)
    end

    it 'returns false if given array does not contains given sub sum' do
      a = [1,3,1,2,7]
      expect(sub_sum?(a, 8)).to eq(false)
    end
  end

  describe '#triangles' do
    it 'returns number of triangle where x < y < z and a[x] + a[y] > a[z], for a[x] <= a[y] <= a[z]' do
      a = [1,2,3,4,5]
      expect(triangles(a)).to eq(3)
    end
  end
end