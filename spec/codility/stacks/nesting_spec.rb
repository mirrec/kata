require 'spec_helper'
require 'codility/stacks/nesting'

RSpec.describe Codility::Stacks::Nesting do
  include Codility::Stacks::Nesting

  it 'works' do
    s = '(()(())())'
    expect(solution(s)).to eq(1)
  end

  it 'works' do
    s = '())'
    expect(solution(s)).to eq(0)
  end

  it 'works' do
    s = '('
    expect(solution(s)).to eq(0)
  end

  it 'works' do
    s = ''
    expect(solution(s)).to eq(1)
  end
end