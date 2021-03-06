require 'spec_helper'
require 'codility/leader/equi_leader'

RSpec.describe Codility::Leader::EquiLeader do
  include Codility::Leader::EquiLeader

  it 'returns the number of equi leaders' do
    a = [4,3,4,4,4,2]
    expect(solution(a)).to eq(2)
  end

  it 'return 0 if there is no leader' do
    a = [1,2,3,4]
    expect(solution(a)).to eq(0)
  end

  it 'counts correct number of equi leaders fo array that contains only leader values' do
    a = [2,2,2,2]
    expect(solution(a)).to eq(3)
  end
end