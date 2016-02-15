require 'spec_helper'
require 'codility/sieve/count_semiprimes'

RSpec.describe Codility::Sieve::CountSemiprimes do
  include Codility::Sieve::CountSemiprimes

  it 'returns an array consisting of M elements specifying the consecutive answers to all the queries' do
    p = [1,   4, 16, 4]
    q = [26, 10, 20, 6]

    expect(solution(26, p, q)).to eq([10, 4, 0, 2])
  end

  describe '#fast_semiprimes' do
    it 'works' do
      n = 20
      result = [0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0]
      expect(fast_semiprimes(n)).to eq(result)
    end

    it 'works' do
      n = 20
      result = [0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0]
      expect(fast_semiprimes(n)).to eq(result)
    end

    it 'is fast' do
      n = 30_000
      expect(fast_semiprimes(n).count).to eq(30_001)
    end
  end

  describe 'SemiValue' do
    describe '#try_prime' do
      it 'marks prime number as not semiprime' do
        value = Codility::Sieve::CountSemiprimes::SemiValue.new(2, :untouched, 0)
        value.try_prime(2)
        expect(value.state).to eq(:not)
      end

      it 'marks semiprime numbers' do
        value = Codility::Sieve::CountSemiprimes::SemiValue.new(4, :untouched, 0)
        value.try_prime(2)
        expect(value.semiprime?).to eq(true)
      end

      it 'marks semiprime numbers' do
        value = Codility::Sieve::CountSemiprimes::SemiValue.new(6, :untouched, 0)
        value.try_prime(2)
        value.try_prime(3)
        expect(value.semiprime?).to eq(true)
      end

      it 'marks not semiprimes' do
        value = Codility::Sieve::CountSemiprimes::SemiValue.new(12, :untouched, 0)
        value.try_prime(2)
        value.try_prime(3)
        expect(value.semiprime?).to eq(false)
      end
    end
  end
end