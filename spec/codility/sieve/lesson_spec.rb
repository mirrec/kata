require 'spec_helper'
require 'codility/sieve/lesson'

RSpec.describe Codility::Sieve::Lesson do
  include Codility::Sieve::Lesson

  describe '#sieve_of_eratostenes' do
    it 'returns prime numbers until given n' do
      expect(sieve_of_eratostenes(20)).to eq([2,3,5,7,11,13,17,19])
    end
  end

  describe '#smallest_dividers' do
    it 'returns prime numbers until given n' do
      expect(smallest_dividers(20)).to eq([0,0,0,0,2,0,2,0,2,3,2,0,2,0,2,3,2,0,2,0,2])
    end
  end

  describe '#factorization' do
    it 'returns array of prime factors for given number' do
      dividers = smallest_dividers(30)
      expect(factorization(30, dividers)).to eq([2,3,5])
    end
  end
end