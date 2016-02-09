require 'spec_helper'
require 'codility/dynamic/lesson'

RSpec.describe Codility::Dynamic::Lesson do
  include Codility::Dynamic::Lesson

  describe '#coin_changing' do
    it 'returns minimal number of coins for given amount and coin\'s set' do
      expect(coin_changing(16, [1,2,3,5,10,12])).to eq(3)
    end
  end

  describe '#frog' do
    it 'works' do
      expect(frog([1,2], 3)).to eq(3)
    end
  end
end