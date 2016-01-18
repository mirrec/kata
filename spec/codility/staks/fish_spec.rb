require 'spec_helper'
require 'codility/stacks/fish'

RSpec.describe Codility::Stacks::Fish do
  include Codility::Stacks::Fish

  it 'works' do
    a = [4,3,2,1,5]
    b = [0,1,0,0,0]

    expect(solution(a, b)).to eq(2)
  end

  it 'all are alive when there is no interaction' do
    a = [1,2,3,4]
    b = [0,0,0,0]
    expect(solution(a, b)).to eq(4)
  end

  it 'all are alive when there is no interaction' do
    a = [1,2,3,4]
    b = [1,1,1,1]
    expect(solution(a, b)).to eq(4)
  end

  it 'works to left' do
    a = [1,2,3,4]
    b = [1,1,1,0]
    expect(solution(a, b)).to eq(1)
  end

  it 'works to right' do
    a = [4,2,3,1]
    b = [1,0,0,0]
    expect(solution(a, b)).to eq(1)
  end

  it 'works on both sides' do
    a = [4,2,3,6]
    b = [1,0,1,0]
    expect(solution(a, b)).to eq(1)
  end

  it 'works with one fish' do
    a = [4]
    b = [1]
    expect(solution(a, b)).to eq(1)

    a = [4]
    b = [0]
    expect(solution(a, b)).to eq(1)
  end
end