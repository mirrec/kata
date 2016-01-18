require 'spec_helper'
require 'codility/time_complexity/frog_jump'

RSpec.describe Codility::TimeComplexity::FrogJump do
  include Codility::TimeComplexity::FrogJump

  it 'counts correct number of jumps' do
    expect(solution(10, 85, 30)).to eq(3)
  end

  it 'returns 0 if frog is already there' do
    expect(solution(10, 10, 30)).to eq(0)
  end
end
