require 'spec_helper'
require 'codility/frog_jump'

RSpec.describe Codility::FrogJump do
  include Codility::FrogJump

  it 'counts correct number of jumps' do
    expect(solution(10, 85, 30)).to eq(3)
  end

  it 'returns 0 if frog is already there' do
    expect(solution(10, 10, 30)).to eq(0)
  end
end
