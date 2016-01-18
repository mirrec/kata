require 'spec_helper'
require 'codility/sums/lesson'

RSpec.describe Codility::Sums::Lesson do
  include Codility::Sums::Lesson

  xit 'returns maximum number of correctable mushrooms' do
    a = [2,3,7,5,1,3,9]

    expect(solution(a, 4, 6)).to eq(25)
  end
end