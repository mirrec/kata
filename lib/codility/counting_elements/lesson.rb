module Codility
  module CountingElements
    module Lesson
      # O(n + m)
      def counting(a, m = nil)
        m ||= a.length
        b = [0] * (m + 1)

        a.each do |element|
          b[element] += 1
        end

        b
      end

      # O(n^2)
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
end