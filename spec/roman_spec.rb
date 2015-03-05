require 'roman'

RSpec.describe Roman do
  describe '.from_arabic' do
    it 'converts arabic number to roman' do
      {
          1 => 'I',
          2 => 'II',
          3 => 'III',
          4 => 'IV',
          5 => 'V',
          6 => 'VI',
          7 => 'VII',
          8 => 'VIII',
          9 => 'IX',
          10 => 'X',
          50 => 'L',
          60 => 'LX',
      }.each do |arabic, roman|
        expect(Roman.from_arabic(arabic)).to eq(roman)
      end
    end
  end

  describe '.parts_for_roman' do
    it 'splits arabic number to arabic parts' do
      {
          1 => [1],
          2 => [1, 1],
          3 => [1, 1, 1],
          4 => [1, 5],
          5 => [5],
          6 => [5, 1],
          7 => [5, 1, 1],
          8 => [5, 1, 1, 1],
          9 => [1, 10],
          10 => [10],
          40 => [10, 50],
          49 => [10, 50, 1, 10],
          199 => [100, 10, 100, 1, 10],
          999 => [100, 1000, 10, 100, 1, 10]
      }.each do |number, parts|
        expect(Roman.parts_for_roman(number)).to eq(parts)
      end
    end
  end
end