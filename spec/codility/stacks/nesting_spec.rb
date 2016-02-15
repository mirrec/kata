require 'spec_helper'
require 'codility/stacks/nesting'

RSpec.describe Codility::Stacks::Nesting do
  include Codility::Stacks::Nesting

  it 'returns 1 if string S is properly nested' do
    s = '(()(())())'
    expect(solution(s)).to eq(1)
  end

  it 'returns 0 if string S is not properly nested' do
    s = '())'
    expect(solution(s)).to eq(0)
  end

  it 'returns 0 if S contains only one character' do
    s = '('
    expect(solution(s)).to eq(0)
  end

  it 'returns 1 if s is empty string' do
    s = ''
    expect(solution(s)).to eq(1)
  end
end