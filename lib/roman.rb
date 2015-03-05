class Roman
  BORDERS = {
      1 => 'I',
      5 => 'V',
      10 => 'X',
      50 => 'L',
      100 => 'C',
      500 => 'D',
      1000 => 'M',
  }

  def self.from_arabic(arabic_number)
    parts_for_roman(arabic_number).map{ |part| BORDERS.fetch(part) }.join
  end

  def self.parts_for_roman(number)
    parts = []

    BORDERS.keys.reverse.each.each do |current_border|
      while number > 0
        if number / current_border > 0
          number = number - current_border
          parts << current_border
          next
        end

        subtracting = [100, 10, 1].find { |sub_border| sub_border < current_border }

        if number + subtracting >= current_border
          parts << subtracting
          parts << current_border

          number = number - (current_border - subtracting)
          next # really needed ?
        end

        break
      end
    end

    parts
  end
end