require 'spec_helper'
require 'codility/stacks/brackets'

RSpec.describe Codility::Stacks::Brackets do
  include Codility::Stacks::Brackets

  it '1 if nesting ok' do
    s = '{[()()]}'
    expect(solution(s)).to eq(1)
  end

  it '0 if nesting is bad' do
    s = '([)()]'
    expect(solution(s)).to eq(0)
  end

  it 'empty string' do
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
