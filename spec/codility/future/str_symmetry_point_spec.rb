require 'spec_helper'
require 'codility/future/str_symmetry_point'

RSpec.describe Codility::Future::StrSymmetryPoint do
  include Codility::Future::StrSymmetryPoint

  it 'returns index of string, starting from 0, from where the string on left side is reversal to the right side' do
    expect(solution('racecar')).to eq(3)
  end

  it 'returns -1 if string does not contain such index' do
    expect(solution('hello')).to eq(-1)
  end

  it 'returns 0 for one string' do
    expect(solution('h')).to eq(0)
  end

  it 'return -1 for empty string' do
    expect(solution('')).to eq(-1)
  end

  it 'return -1 for even string number' do
    expect(solution('ollo')).to eq(-1)
  end
end