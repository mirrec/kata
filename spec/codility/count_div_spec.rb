require 'spec_helper'
require 'codility/count_div'

RSpec.describe Codility::CountDiv do
  include Codility::CountDiv

  it 'works for given example' do
    expect(solution(6, 11, 2)).to eq(3)
  end

  it 'works when 1,1 and k is 1' do
    expect(solution(1, 1, 1)).to eq(1)
  end

  it 'works 1' do
    expect(solution(1, 3, 1)).to eq(3)
  end

  it 'works 3' do
    expect(solution(2, 6, 2)).to eq(3)
  end

  it 'works 2' do
    expect(solution(3, 6, 2)).to eq(2)
  end

  it 'returns 0 if there are not any divider' do
    expect(solution(1, 1, 2)).to eq(0)
  end

  it 'works for zeros in both side of interval' do
    expect(solution(0, 0, 2)).to eq(1)
  end

  it 'works' do
    expect(solution(1,2,1)).to eq(2)
  end

  it 'works' do
    expect(solution(1,2,2)).to eq(1)
  end

  it 'works' do
    expect(solution(1,2,3)).to eq(0)
  end

  it 'works' do
    expect(solution(5, 15, 7)).to eq(2)
  end
end
