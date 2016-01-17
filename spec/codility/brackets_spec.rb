require 'spec_helper'
require 'codility/brackets'

RSpec.describe Codility::Brackets do
  include Codility::Brackets

  it '1 if nested ok' do
    s = '{[()()]}'
    expect(solution(s)).to eq(1)
  end

  it '0 if nesting is bad' do
    s = '([)()]'
    expect(solution(s)).to eq(0)
  end

  it 'emptry string' do
    s = ''
    expect(solution(s)).to eq(1)
  end

  it 'works' do
    expect(solution('[]')).to eq(1)
    expect(solution('{}')).to eq(1)
    expect(solution('()')).to eq(1)
    expect(solution('(())')).to eq(1)

    expect(solution('(()')).to eq(0)
    expect(solution('(([)])')).to eq(0)
  end
end
