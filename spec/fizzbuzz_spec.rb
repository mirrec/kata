require 'fizzbuzz'

describe FizzBuzz do
  let(:fizz_buzz) { FizzBuzz.new }

  describe '#fizz_buzz' do
    it 'returns 1 if 1 is given' do
      expect(fizz_buzz.fizz_buzz(1)).to be 1
    end

    it 'returns 2 if 2 is given' do
      expect(fizz_buzz.fizz_buzz(2)).to be 2
    end

    it 'returns fizz if 3 is given' do
      expect(fizz_buzz.fizz_buzz(3)).to eq "fizz"
    end

    it 'returns fizz if 6 is given' do
      expect(fizz_buzz.fizz_buzz(6)).to eq "fizz"
    end

    it 'returns buzz if 5 is given' do
      expect(fizz_buzz.fizz_buzz(5)).to eq "buzz"
    end

    it 'returns buzz if 10 is given' do
      expect(fizz_buzz.fizz_buzz(10)).to eq "buzz"
    end

    it 'returns buzz if 15 is given' do
      expect(fizz_buzz.fizz_buzz(15)).to eq "fizzbuzz"
    end

    it 'returns buzz if 30 is given' do
      expect(fizz_buzz.fizz_buzz(30)).to eq "fizzbuzz"
    end
  end

  describe '#fizz_buzz_upto' do
    it 'returns fizz buzz numbers up to the given number' do
      expect(fizz_buzz.fizz_buzz_upto(10)).to eq "1\n2\nfizz\n4\nbuzz\nfizz\n7\n8\nfizz\nbuzz\n"
    end
  end
end