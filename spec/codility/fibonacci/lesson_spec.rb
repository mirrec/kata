require 'spec_helper'
require 'codility/fibonacci/lesson'

RSpec.describe Codility::Fibonacci::Lesson do
  include Codility::Fibonacci::Lesson

  describe '#slow_version' do
    it 'works' do
      [
          [0, 0],
          [1, 1],
          [2, 1],
          [3, 2],
          [4, 3],
          [5, 5],
          [6, 8],
          [7, 13],
          [8, 21],
          [9, 34],
          [10, 55],
          [11, 89],
          [12, 144],
          [13, 233],
          [20, 6765],
      ].each do |n, result|
        expect(fib_slow(n)).to eq(result)
      end
    end
  end

  describe '#fib_numbers' do
    it 'works' do
      numbers = fib_numbers(100)
      expect(numbers[30]).to eq(832040)
      expect(numbers[40]).to eq(102334155)
    end
  end

  xit 'prints fibonacci' do
    fib_numbers(20).each_with_index do |fib, number|
      puts "#{number} => #{fib}"
    end
  end
end
