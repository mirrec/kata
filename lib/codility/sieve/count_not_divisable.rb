module Codility
  module Sieve
    module CountNotDivisable
      def solution(a)
        number_of_counts = count_occurrence(a)
        dividers = count_dividers(a.max, number_of_counts)

        results = []

        a.each do |element|
          values = dividers[element]

          sum = values.inject(0) { |sum, factor| sum + number_of_counts.fetch(factor, 0) }

          results << a.length - sum
        end

        results
      end

      def count_occurrence(a)
        number_of_counts = {}
        a.each do |element|
          number_of_counts[element] ||= 0
          number_of_counts[element] += 1
        end

        number_of_counts
      end

      def count_dividers(n, elements_count)
        dividers = []
        0.upto(n).each do |i|
          dividers[i] = []
        end

        i = 1
        while i * 2 <= n
          unless elements_count.key?(i)
            i += 1
            next
          end

          k = i
          while k <= n
            dividers[k] << i
            k += i
          end
          i += 1
        end

        dividers.each_with_index do |element, index|
          if element[-1] != index && elements_count.key?(index)
            element << index
          end
        end

        dividers
      end
    end
  end
end