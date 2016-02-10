require 'spec_helper'
require 'codility/fibonacci/fib_frog'

RSpec.describe Codility::Fibonacci::FibFrog do
  include Codility::Fibonacci::FibFrog

  describe '#fib_numbers_to' do
    it 'works returns array of integers to given n' do
      expect(fib_numbers_to(8)).to eq([0,1,1,2,3,5,8])
    end
  end

  it 'returns minimal number of fibonacci jumps' do
    a = [0,0,0,1,1,0,1,0,0,0,0]
    expect(solution(a)).to eq(3)
  end

  it 'finds optimal way' do
    a = [1,1,1,1,1,1,1,1,1,1,1]
    expect(solution(a)).to eq(3)
  end

  it 'returns -1 if there is no way how to get to the other side' do
    a = [0,0,1,0,0,0,0,0]
    expect(solution(a)).to eq(-1)
  end

  it 'finds optimal way' do
    a = [0,1,0,0,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0]
    expect(solution(a)).to eq(3)
  end

  it 'can jump direct to other side' do
    a = [0,0]
    expect(solution(a)).to eq(1)
  end

  xit 'runs fast' do
    a = [1] * 5_000
    expect(solution(a)).to eq(6)
  end

  describe '#breath_first_search' do
    it 'finds least number of jumps need to get from start to end' do
      # a = [0,1,0,0,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0]
      points = [0, 2, 5, 7, 20]
      fibonacci = {
          1 => true,
          2 => true,
          3 => true,
          5 => true,
          8 => true,
          13 => true,
      }
      expect(breath_first_search(points, fibonacci)).to eq(3)
    end

    xit 'runs fast' do
      fibonacci = {}
      fib_numbers_to(5_000 + 2).each do |number|
        fibonacci[number] = true
      end

      expect(breath_first_search((0..5_000).to_a, fibonacci)).to eq(6)
    end
  end

  describe '#faster_minimal_path' do
    xit 'runs fast' do
      fibonacci = {}
      fib_numbers_to(5_000 + 2).each do |number|
        fibonacci[number] = true
      end

      expect(faster_minimal_path((0..5_000).to_a, fibonacci)).to eq(6)
    end
  end
end