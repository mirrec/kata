module Codility
  module CountingElements
    def counting(a)
      b = [0] * (a.length + 1)

      a.each do |element|
        b[element] += 1
      end

      b
    end

    def swap_of_elements(a, b)
      a_sum = a.inject(0) { |sum, number| sum + number }
      b_sum = b.inject(0) { |sum, number| sum + number }

      a.each do |element_a|
        b.each do |element_b|
          result = element_a - element_b
          return true if a_sum - result == b_sum + result
        end
      end

      false
    end
  end
end