require 'spec_helper'
require 'codility/euclidean/lesson'

RSpec.describe Codility::Euclidean::Lesson do
  include Codility::Euclidean::Lesson

  describe '#gsd' do
    it 'works' do
      expect(gcd(16, 8)).to eq(8)
      expect(gcd(24, 15)).to eq(3)
      expect(gcd(15, 24)).to eq(3)
      expect(gcd(100, 1)).to eq(1)
    end
  end

  describe '#gsd' do
    it 'works' do
      expect(binary_gcd(16, 8)).to eq(8)
      expect(binary_gcd(24, 15)).to eq(3)
      expect(binary_gcd(15, 24)).to eq(3)
      expect(binary_gcd(100, 1)).to eq(1)
    end
  end

  describe '#lcm' do
    it 'works' do
      expect(lcm(25, 5)).to eq(25)
    end

    # 2,3,5

    # 6, 12, 18, 24, 30
    # 10, 20, 30,
    # 15, 30
  end
end
